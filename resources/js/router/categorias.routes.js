import { List, AddEdit } from '../views/Categoria';
import Admin from '../containers/Admin.vue';
//import Full from '../containers/Full.vue';

export default {
    path: '/categorias',
    component: Admin,
    children: [
        { path: '', component: List, meta: { requiresAuth: true } },
        { path: 'add', component: AddEdit, meta: { requiresAuth: true } },
        { path: 'edit/:id', component: AddEdit, meta: { requiresAuth: true } }
    ]
};
