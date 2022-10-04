import publicRoutes from "./publicRoutes";
import backOfficeRoutes from "./backOfficeRoutes";
import authRoutes from "./authRoutes";

const allRoutes = publicRoutes.concat(backOfficeRoutes, authRoutes);

export const routes = allRoutes;
