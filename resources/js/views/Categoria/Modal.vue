<template>
    <teleport to="body">
        <transition name="fade">
            <div v-if="modelValue"
                 class="pt-5 position-fixed top-0 start-0 h-100 w-100"
                 style="background-color: rgba(0, 0, 0, 0.25)">

                <div id="backdrop" @click="backdropClick"
                     class="modal-dialog modal-dialog-centered">
                     <div class="modal-content">
                        <div class="modal-header bg-light">
                           <!--  {{header}} -->
                            <h4 class="modal-title" id="myCenterModalLabel">Insertar Categoría</h4>
                            <button type="button" @click='close()' class="btn-close"  aria-label="Close"></button>
                        </div>
                        <div class="modal-body p-4">
                            <form>
                                <input type="text" v-model="form.cat_codigo" class="form-control"  id="name" placeholder="">

                                <div class="mb-3">
                                    <label for="name" class="form-label">Descripcion</label>
                                    <input type="text" v-model="form.cat_descripcion" class="form-control" id="name" placeholder="Ingrese la descripcion">
                                </div>

                                <div class="text-end">
                                    <button type="button" class="btn btn-success waves-effect waves-light"
                                            @click="save()" >Save</button>
                                    <button type="button"
                                             class="btn btn-danger waves-effect waves-light"
                                             @click='$emit("update:modelValue", false)'>Cancel
                                    </button>
                                    <button type="button"
                                             class="btn btn-danger waves-effect waves-light"
                                             @click='close()'>Cancel
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                </div>
            </div>
        </transition>
    </teleport>

</template>

<script setup>
import { ref,reactive,watchEffect,onBeforeMount,onMounted,getCurrentInstance } from 'vue';

/* const props = defineProps({
        id: String,
        visible: Boolean,
        variant:String
    }) */

const props = defineProps({
    modelValue: {
        type: Boolean,
        required: true,
        default: false
    },
    closeable: {
        type: Boolean,
        required: false,
        default: false
    },
    header: {
        type: String,
        required: false,
        default: null
    },
    container: {
        type: String,
        required: false,
        default: null
    }
})

const emit = defineEmits(['update:modelValue', 'actualizarTotales','actualizarGrilla']);

// esto mapea el formulario, serian los campos de la db o lo qu evoy a anviar al backend
var form = reactive({
    cat_codigo: 0,
    cat_descripcion: ''
})

function save(){
    //emit('actualizado');
    emit('actualizarGrilla');
    emit("actualizarTotales", form.cat_codigo);
    close();
}

// recuperamos la categoria, hacemos que la func sea asyn para que primero
// recupere la info y luego levante el form
const getCategoria = async (codigo) => {
    form.cat_codigo = codigo;
    //alert('este es el nro: ' + codigo);
    const res = await axios.get('/api/categorias/' + codigo);
    form.cat_descripcion = res.data.data.cat_descripcion;
    //console.log(res.data.data.cat_descripcion);
}

function close(){
    //alert('esto cierra el modal');
    //props.modelValue = false;
    emit("update:modelValue", false);
    clearForm();
}

function clearForm(){
    form.cat_codigo='';
    form.cat_descripcion='';
}

// aqui escuchamos lo que pasa con los controles
watchEffect(() => {

    if (form.cat_codigo==15){
        //props.valorID =form.cat_codigo;
        //emit("actualizarTotales", form.cat_codigo);
        //props.prueba = form.cat_codigo;
        console.log('esto esta ok')
    }

});

// habilitamos para que se pueda ejecutar desde el componente padre
defineExpose({ getCategoria, form });


</script>

<style scoped>
.fade-enter-active, .fade-leave-active {
  transition: opacity 0.5s
}
.fade-enter-from, .fade-leave-to{
  opacity: 0
}
</style>
