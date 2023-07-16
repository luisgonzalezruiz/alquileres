<template>
<div>
    <div class="content">
        <!-- Start Content-->
        <div class="container-fluid">
            <!-- start page title -->
            <div class="row">
                <div class="col-12">
                    <div class="page-title-box">
                        <div class="page-title-right">
                            <ol class="breadcrumb m-0">
                                <li class="breadcrumb-item"><a href="">Configuraciones</a></li>
                                <li class="breadcrumb-item active">Categoria</li>
                            </ol>
                        </div>
                        <h4 class="page-title">Categorias  {{ valorID }} </h4>
                        <!-- {{categorias}} -->
                    </div>
                </div>
            </div>
            <!-- end page title -->

            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="row mb-2">
                                <div class="col-lg-8">
                                    <div class="d-flex flex-wrap align-items-center">
                                        <label for="status-select" class="me-2">Filtrar</label>
                                        <div class="me-sm-3">
                                            <select class="form-select my-1 my-md-0" id="status-select">
                                                <option selected="">All</option>
                                                <option value="1">Id</option>
                                                <option value="2">Descripcion</option>
                                            </select>
                                        </div>
                                        <div class="me-3">
                                            <input type="search" v-model="search" class="form-control my-1 my-md-0" id="search" placeholder="Search...">
                                        </div>
                                        {{ search }}
                                    </div>
                                </div>

                                <div class="col-lg-4">
                                    <div class="text-lg-end">
                                        <button class="btn btn-danger waves-effect waves-light mb-2 me-2"
                                                @click="openModal()" >
                                            <i class="mdi mdi-plus-circle me-1"></i> Add New
                                        </button>
                                        <!-- <button type="button" class="btn btn-danger waves-effect waves-light mb-2 me-2"><i class="mdi mdi-basket me-1"></i> Add New Order</button> -->
                                        <!-- <button type="button" class="btn btn-light waves-effect mb-2">Export</button> -->

                                        <!-- <div class="dropdown float-end">
                                            <a href="#" class="dropdown-toggle arrow-none text-muted"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                <i class='mdi mdi-dots-horizontal font-18'></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <a href="javascript:void(0);" class="dropdown-item">
                                                    <i class='mdi mdi-attachment me-1'></i>Exportar PDF
                                                </a>
                                                <a href="javascript:void(0);" class="dropdown-item">
                                                    <i class='mdi mdi-pencil-outline me-1'></i>Exportar Excel
                                                </a>
                                            </div>
                                        </div> -->

                                        <div class="btn-group dropdown float-end">
                                            <a href="javascript: void(0);"
                                                class="table-action-btn dropdown-toggle arrow-none btn btn-light btn-md"
                                                data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i>
                                            </a>
                                            <div class="dropdown-menu dropdown-menu-end">
                                                <a class="dropdown-item" href="#"><i class="fe-align-justify me-2 text-muted font-18 vertical-middle"></i>Exportar PDF</a>
                                                <a class="dropdown-item" href="#"><i class="mdi mdi-check-all me-2 text-muted font-18 vertical-middle"></i>Exportar Excel</a>
                                                <a class="dropdown-item" href="#"><i class="fe-alert-triangle me-2 text-muted font-18 vertical-middle"></i>Imprimir</a>
                                            </div>
                                        </div>

                                    </div>
                                </div>
                            </div>

                            <div class="table-responsive">
                                <table class="table table-sm table-centered table-nowrap mb-0">
                                    <thead class="table-light">
                                        <tr>
                                            <th>ID</th>
                                            <th>Descripción</th>
                                            <th>Fecha creación</th>
                                            <th style="width: 125px; text-align: right;">Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr v-for="categoria in categorias.data" :key="categoria.cat_codigo">
                                            <td>{{categoria.cat_codigo}}</td>
                                            <td>{{categoria.cat_descripcion}}</td>
                                            <td>{{categoria.created_at}} </td>
                                             <!-- <td>
                                                <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-eye"></i></a>
                                                <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-square-edit-outline"></i></a>
                                                <a href="javascript:void(0);" class="action-icon"> <i class="mdi mdi-delete"></i></a>
                                            </td> -->
                                            <td>
                                                <div class="btn-group dropdown float-end">
                                                    <a href="javascript: void(0);" class="table-action-btn dropdown-toggle arrow-none btn btn-light btn-sm"
                                                        data-bs-toggle="dropdown" aria-expanded="false"><i class="mdi mdi-dots-horizontal"></i>
                                                    </a>
                                                    <div class="dropdown-menu dropdown-menu-end">
                                                        <a class="dropdown-item" href="#"><i class="mdi mdi-eye me-2 text-muted font-18 vertical-middle"></i>Show</a>
                                                        <a class="dropdown-item" href="#" @click="showModal(categoria.cat_codigo)" >
                                                            <i class="mdi mdi-square-edit-outline me-2 text-muted font-18 vertical-middle" ></i>Edit
                                                        </a>
                                                        <a class="dropdown-item" href="#"><i class="mdi mdi-delete me-2 text-muted font-18 vertical-middle"></i>Remove</a>
                                                        <a class="dropdown-item" href="#"><i class="mdi mdi-star me-2 font-18 text-muted vertical-middle"></i>Mark as Unread</a>
                                                    </div>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>

                            <ul class="pagination pagination-rounded justify-content-end my-2">
                                <Bootstrap5Pagination  :data="categorias"  @pagination-change-page="getResults" />
                            </ul>

                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>
            <!-- end row -->

            <!-- Modal -->

            <!-- <modal :id=1></modal> -->
<!--             <modal
                v-show="isModalVisible"
                ref="test"
                @close="closeModal"
                @actualizado="prueba"
            /> -->
            <!-- Fin Modal -->

            <button @click="openModal()" type="button"
                    class="btn btn-success mb-2">Open Modal
            </button>

            <Modal v-model="modal"
                   header="Modal"
                   ref="categoriaModel"
                   @actualizarTotales="actualizarTotales"
                   @actualizarGrilla="getResults">
            </Modal>

        </div>

    </div> <!-- en content-fluid -->
</div>  <!-- end content -->

</template>


<script setup>

    import {  ref, watchEffect, reactive, onBeforeMount, onMounted, getCurrentInstance  } from 'vue';
    import { Bootstrap5Pagination } from 'laravel-vue-pagination';

    // import modal from './AddEdit';
    import Modal from './Modal.vue'

    const categorias = ref({});
    const search = ref('');
    const categoriaModel = ref(null);
    const modal = ref(false);

    var valorID = ref(0);

    const openModal = () => {
        modal.value = true;
       /*  setTimeout(() => {
            modal.value = false;
        }, 5000); */
    }

    onMounted(async () => {
        await getResults();
    });

    const getResults = async (page = 1) => {
        //console.log('desde el hijo');
        const res = await axios.get('/api/categorias?page=' + page);
        categorias.value = res.data.data;
    }

    // esta funcion llama a un metodo que esta en el hijo(modal) y le pasa el parametro
    async function showModal(id) {
        await categoriaModel.value.getCategoria(id);
        modal.value = true;
    }

    function actualizarTotales(valor){
        console.log('Llegue a actualizar totales '+ valor );
        valorID = valor;
    }

    watchEffect(() => {
/*
        if(valorID==15){
            console.log('Estoy escuchando en el padre y se escribio 15');
        }
 */
    });


</script>





<script>
/*

import { ref, reactive, onBeforeMount, onMounted, getCurrentInstance  } from "vue";
import { Bootstrap5Pagination } from 'laravel-vue-pagination';

export default {
    name: "Categorias",
    setup(){
        const categorias = ref({});

        onMounted(async () => {
           //await load();
           await getResults();
        });

        //onMounted(async 3() => {
        //    const res = await axios.get('/api/categorias');
        //    categorias.value = res.data;
        //    console.log(res);
        //});

        async function getResults(page = 1){
            const res = await axios.get('/api/categorias?page=' + page);
            categorias.value = await res.json();
            //console.log(categorias.value);
        }

        // async function load(){
        //     const res = await axios.get('/api/categorias');
        //     categorias.value = res.data;
        // }

        function save(){
            //notes.value.push(title.value);
            title.value = "";
        }

        return {
            categorias,
            save,
            getResults
        }
    },
    components:{ Bootstrap5Pagination },
}

*/

</script>
