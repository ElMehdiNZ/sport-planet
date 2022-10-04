/* Container */
const BackOfficeContainer = () => import('../containers/BackOfficeContainer' )

/* Components */
import DashboardIndex from "../features/back-office/pages/dashboard/pages/DashboardIndex";
import SiteIndex from "../features/back-office/pages/sites/pages/SiteIndex";
import SiteAdd from "../features/back-office/pages/sites/pages/SiteAdd";
import SiteEdit from "../features/back-office/pages/sites/pages/SiteEdit";
import ActivityIndex from "../features/back-office/pages/activities/pages/ActivityIndex";
import ActivityAdd from "../features/back-office/pages/activities/pages/ActivityAdd";
import ActivityEdit from "../features/back-office/pages/activities/pages/ActivityEdit";
import PlanIndex from "../features/back-office/pages/plans/pages/PlanIndex";
import PlanAdd from "../features/back-office/pages/plans/pages/PlanAdd";
import PlanEdit from "../features/back-office/pages/plans/pages/PlanEdit";
import ReservationIndex from "../features/back-office/pages/reservation/pages/ReservationIndex";

const backOfficeRoutes = [
    {
        name: "BackOffice",
        path: "/back-office",
        redirect: { name: "BackOffice.Dashboard.Index" },
        component: BackOfficeContainer,
        children: [
            {
                path: "dashboard",
                name: "BackOffice.Dashboard.Index",
                component: DashboardIndex,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Dashboard' }
                },
            },
            {
                path: "activities",
                name: "BackOffice.Activity.Index",
                component: ActivityIndex,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Activités' }
                },
            },
            {
                path: "activity-add",
                name: "BackOffice.Activity.Add",
                component: ActivityAdd,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Add Activités' }
                },
            },
            {
                path: "activity-edit/:activityId",
                name: "BackOffice.Activity.Edit",
                component: ActivityEdit,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Edit Activity' }
                },
                props: true
            },
            {
                path: "sites",
                name: "BackOffice.Site.Index",
                component: SiteIndex,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Sites' }
                },
            },
            {
                path: "sites-add",
                name: "BackOffice.Site.Add",
                component: SiteAdd,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Add Sites' }
                },
            },
            {
                path: "sites-edit/:siteId",
                name: "BackOffice.Site.Edit",
                component: SiteEdit,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Edit Sites' }
                },
                props: true
            },
            {
                path: "plans",
                name: "BackOffice.Plans.Index",
                component: PlanIndex,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Plans' }
                },
            },
            {
                path: "plans-add",
                name: "BackOffice.Plans.Add",
                component: PlanAdd,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Add Plans' }
                },
            },
            {
                path: "plans-edit/:planId",
                name: "BackOffice.Plans.Edit",
                component: PlanEdit,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Edit Plans' }
                },
                props: true
            },
            {
                path: "reservations",
                name: "BackOffice.Reservation.Index",
                component: ReservationIndex,
                meta: {
                    requiresAuth: true,
                    breadcrumb: { name: 'Reservation' }
                },
            }
        ]
    }
]

export default backOfficeRoutes;
