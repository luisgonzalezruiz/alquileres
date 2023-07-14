<template>
<!--
<div class="modal fade" :class="{ open }">
    <div class="modal-content">
      <header class="modal-header">
        <h3>{{ title }}</h3>
        <span @click="close">&times;</span>
      </header>
      <article class="modal-body">
        <slot name="content"></slot>
      </article>
      <footer class="modal-footer">
        <slot name="actions"></slot>
      </footer>
    </div>
</div>
-->

<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true" :class="{ open }">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header bg-light">
                <h4 class="modal-title" id="myCenterModalLabel">Insertar Categoría</h4>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body p-4">
                <form @submit.prevent="save">
                    <input type="text" v-model="form.cat_codigo" class="form-control"  id="name" placeholder="">

                    <div class="mb-3">
                        <label for="name" class="form-label">Descripcion</label>
                        <input type="text" v-model="form.cat_descripcion"  class="form-control" id="name" placeholder="Ingrese la descripcion">
                    </div>

                    <div class="text-end">
                        <button type="submit" class="btn btn-success waves-effect waves-light" @click="save()" >Save</button>
                        <button type="button" class="btn btn-danger waves-effect waves-light" data-bs-dismiss="modal" @click="close()">Cancel</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
</template>

<script setup>

    import {  ref, reactive, onBeforeMount, onMounted, getCurrentInstance  } from 'vue';

    const categoria = ref({});

    // definimos las propiedades que vamos a recibir del padre
    const props = defineProps({
        id: {
            required: true,
            type: String
        }
    })

    // definimos los eventos que vamos a emitirle al padre
    const emit = defineEmits(['actualizado', 'delete'])

    // esto mapea el formulario, serian los campos de la db o lo qu evoy a anviar al backend
    const form = reactive({
        cat_codigo: 0,
        cat_descripcion: ''
    })

    onMounted(async () => {
        //form.cat_codigo = props.id;
        //await getCategoria();
    });

    // recuperamos la categoria
    const getCategoria = async (codigo) => {
        form.cat_codigo = codigo;
        alert('este es el nro: ' + codigo);
        const res = await axios.get('/api/categorias/' + codigo);
        //categoria.value = res.data.data;
        console.log(res);
    }

    function save(){
        //alert('Registro grabado');
        // aqui emitimos un evento al padre para que pueda refrescar la grilla con los valores nuevos
        emit('actualizado', 'ok')
    }

    function close(){
        //alert('esto cierra el modal');
    }
    //getResults();

    // habilitamos para que se pueda ejecutar desde el componente padre
    defineExpose({ getCategoria });

</script>
