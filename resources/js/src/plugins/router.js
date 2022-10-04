import { createWebHistory, createRouter } from "vue-router";
import { routes } from '../router/routes';

const router = createRouter({
    history: createWebHistory(),
    routes
});

router.beforeEach((to, from, next) => {
    if (to.meta.requiresAuth && localStorage.getItem('auth_token') === null)
        next("/auth/back-office/login");

    next();
});

export default router;
