/* Container */
const AuthContainer = () => import('../containers/AuthContainer' )

/* Components */
const BackOfficeLogin = () => import('../features/auth/pages/BackOfficeLogin' )

const authRoutes = [
    {
        name: "Auth",
        path: "/auth",
        component: AuthContainer,
        redirect: { name: "Auth.Login.Home" },
        children: [
            {
                path: "back-office/login",
                name: "Auth.Login.Home",
                component: BackOfficeLogin
            }
        ]
    }
]

export default authRoutes;
