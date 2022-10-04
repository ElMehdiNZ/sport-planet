/* Container */
const PublicContainer = () => import('../containers/PublicContainer' )

/* Components */
const Home = () => import('../features/home/pages/Home' )

const publicRoutes = [
    {
        name: "Public",
        path: "/",
        component: PublicContainer,
        children: [
            {
                path: "",
                name: "Public.Home",
                component: Home
            }
        ]
    }
]

export default publicRoutes;
