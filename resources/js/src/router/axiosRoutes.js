import axios from "axios";

axios.defaults.baseURL = 'http://127.0.0.1:8000/back-office/dashboard';
axios.defaults.headers.common['Authorization']='Bearer '+localStorage.getItem('auth_token');
