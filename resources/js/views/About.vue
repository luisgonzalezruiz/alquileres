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
                                        <div class="me-sm-3">
                                            <ejs-dropdownlist id='dropdownlist' :dataSource='ddldata'></ejs-dropdownlist>
                                        </div>

                                        <div class="me-3">
                                            <!-- <input type="search" v-model="search" class="form-control my-1 my-md-0"
                                            id="search" placeholder="Search..."> -->
                                            <input class="e-input" type="text" placeholder="Search..." />
                                        </div>
                                        {{ search }}

                                    </div>
                                </div>

                                <div class="col-lg-4">
                                    <div class="text-lg-end">
                                        <!-- Aqui agregamos los botopnes ADD -->
                                        <ejs-button cssClass='e-primary'>Agregar</ejs-button>
                                        <ejs-button cssClass='e-info'>Exportar</ejs-button>
                                    </div>
                                </div>

                            </div>

                            <!-- Aqui la grilla -->
                            <div class="table-responsive">

                                <ejs-grid :dataSource='data'>
                                    <e-columns>
                                    <e-column field='OrderID' width='100' textAlign="Right"></e-column>
                                    <e-column field='CustomerID' width='100'></e-column>
                                    <e-column field='EmployeeID' width='100' textAlign="Right"></e-column>
                                    <e-column field='Freight' width='100' format="C2" textAlign="Right"></e-column>
                                    <e-column field='ShipCountry' width='100'></e-column>
                                    </e-columns>
                                </ejs-grid>

                            </div>

                            <!-- Aqui el apginado -->

                        </div> <!-- end card-body-->
                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>


        </div>

    </div> <!-- en content-fluid -->
</div>  <!-- end content -->

</template>


<script setup>
 import {
    GridComponent as EjsGrid,
    ColumnsDirective as EColumns,
    ColumnDirective as EColumn
}  from '@syncfusion/ej2-vue-grids';

 import { ButtonComponent as EjsButton } from "@syncfusion/ej2-vue-buttons";
 import { TextBoxComponent as EjsTextbox } from "@syncfusion/ej2-vue-inputs";

 import { DropDownListComponent  as EjsDropdownlist } from "@syncfusion/ej2-vue-dropdowns";

const data = [
  {
    OrderID: 10248, CustomerID: 'VINET', EmployeeID: 5, ShipCountry: 'France', Freight: 32.38
  },
  {
    OrderID: 10249, CustomerID: 'TOMSP', EmployeeID: 6, ShipCountry: 'Germany', Freight: 11.61
  },
  {
    OrderID: 10250, CustomerID: 'HANAR', EmployeeID: 4, ShipCountry: 'Brazil', Freight: 65.83
  }
];

const ddldata = ['Badminton', 'Cricket', 'Football', 'Golf', 'Tennis']


</script>

<style>
@import "~@syncfusion/ej2-base/styles/material3.css";
@import "~@syncfusion/ej2-buttons/styles/material3.css";
@import "~@syncfusion/ej2-calendars/styles/material3.css";
@import "~@syncfusion/ej2-dropdowns/styles/material3.css";
@import "~@syncfusion/ej2-inputs/styles/material3.css";
@import "~@syncfusion/ej2-navigations/styles/material3.css";
@import "~@syncfusion/ej2-popups/styles/material3.css";
@import "~@syncfusion/ej2-splitbuttons/styles/material3.css";
@import "~@syncfusion/ej2-vue-grids/styles/material3.css";
@import "~@syncfusion/ej2-vue-inputs/styles/material3.css";

 @import "~@syncfusion/ej2-vue-dropdowns/styles/material3.css";

</style>
