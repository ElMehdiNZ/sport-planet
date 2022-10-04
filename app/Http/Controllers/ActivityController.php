<?php

namespace App\Http\Controllers;

use App\Models\Activity;
use Illuminate\Http\Request;

class ActivityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->filled("withPagination"))
            return Activity::with('media')->withCount('plans')->latest()->paginate(5);

        return Activity::with(['media', 'plans'])->latest()->get();
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create(Request $request)
    {
        $request->validate([
            'name'=>'required|string|max:255',
            'description'=>'required|string|max:255',
            'image'=>'required|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'plans'=>$request->withPlans=="true"?'required':'nullable'
        ]);

        $activity = Activity::create([
            'name'=>ucwords($request->name),
            'description'=>ucwords($request->description)
        ]);

        $activity->addMedia($request->file('image'))->toMediaCollection();

        if ($request->withPlans)
            foreach($request->plans as $plan)
                $activity->plans()->attach(
                    json_decode($plan)->id,
                    [ 
                        'old_price' => json_decode($plan)->oldPrice, 
                        'new_price' => json_decode($plan)->newPrice
                    ]
                );

        return $activity;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Activity  $activity
     * @return \Illuminate\Http\Response
     */
    public function show(Activity $activity)
    {
        return $activity;
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Activity  $activity
     * @return \Illuminate\Http\Response
     */
    public function edit(Activity $activity)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Activity  $activity
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Activity $activity)
    {
        return $activity->update(['name' => $request->name,'description'=>$request->description]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Activity  $activity
     * @return \Illuminate\Http\Response
     */
    public function destroy(Activity $activity,$id)
    {
        $activity = Activity::findOrFail($id);
        $activity->delete();
    }
}
