<template>
    <div>
        <h3 class="text-center">Todas las categorias</h3><br/>

        <table class="table table-bordered">
            <thead>
            <tr>
                <th>ID</th>
                <th>Descripcion</th>
                <th>Created At</th>
                <th>Updated At</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr v-for="categoria in categorias" :key="categoria.cat_codigo">
                <td>{{ categoria.cat_codigo }}</td>
                <td>{{ categoria.cat_descripcion }}</td>
                <td>{{ categoria.created_at }}</td>
                <td>{{ categoria.updated_at }}</td>
                <td>
                    <div class="btn-group" role="group">
                        <router-link :to="{name: 'edit', params: { id: categoria.cat_codigo }}" class="btn btn-primary">Edit
                        </router-link>
                        <button class="btn btn-danger" @click="eliminar(categoria.cat_codigo)">Delete</button>
                    </div>
                </td>
            </tr>
            </tbody>
        </table>
    </div>
</template>

<script>
import { ref, reactive  } from "vue";

export default {
    name: "List",
    setup(){
        const notes = ref([]);
        const title = ref("");

        function save(){
            notes.value.push(title.value);
            title.value = "";
        }

        return {
            notes,
            title,
            save
        }
    },

}




</script>
