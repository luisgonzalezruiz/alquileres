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

                                        <div class="me-4">
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

                        <div  class="card-body">
                            <ejs-textbox floatLabelType="Auto" cssClass="e-outline small-textbox" placeholder="Outlined" />

                            <div class="e-input-group">
                                <input class="e-input e-small" name='input' type="text" placeholder="Enter Date"/>
                                <span class="e-input-group-icon e-input-popup-date"></span>
                            </div>
                        </div>


                    </div> <!-- end card-->
                </div> <!-- end col -->
            </div>


        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="card">
                    <div class="col-lg-12 control-section">
                        <div class="content-wrapper textbox-default">
                            <div class="row material">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Outlined and Filled</b></div>
                            </div>
                            <div class="row material">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <ejs-textbox floatLabelType="Auto" cssClass="e-outline" placeholder="Outlined"></ejs-textbox>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6 filled">
                                    <ejs-textbox floatLabelType="Auto" cssClass="e-filled" placeholder="Filled"></ejs-textbox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Floating Label</b></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <ejs-textbox floatLabelType="Auto" placeholder="First Name"></ejs-textbox>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <ejs-textbox floatLabelType="Auto" placeholder="Last Name" v-bind:enableRtl="true"></ejs-textbox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-12 col-sm-12 col-lg-12 col-md-12">
                                    <div class="e-float-input e-input-group">
                                        <input type="text" required="">
                                        <span class="e-float-line"></span>
                                        <label class="e-float-text">Country</label>
                                        <span class="e-input-group-icon e-spin-down"></span>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Inputs</b></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="text" placeholder="Enter Name">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group e-rtl">
                                        <input class="e-input" type="text" placeholder="Last Name">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="password" placeholder="Password" value="password">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="email" placeholder="Enter Email">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group e-disabled">
                                        <input class="e-input" type="text" placeholder="Disabled" disabled="">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="text" placeholder="Enter Name" value="Readonly" readonly="">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Validation States</b></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-4 col-sm-4 col-lg-4 col-md-4">
                                    <div class="e-input-group e-success">
                                        <input class="e-input" type="text" placeholder="Success">
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-4 col-lg-4 col-md-4">
                                    <div class="e-input-group e-warning">
                                        <input class="e-input" type="text" placeholder="Warning">
                                    </div>
                                </div>
                                <div class="col-xs-4 col-sm-4 col-lg-4 col-md-4">
                                    <div class="e-input-group e-error">
                                        <input class="e-input" type="text" placeholder="Error">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Sizing</b></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6 small-textbox">
                                    <div class="e-input-group e-small">
                                        <input class="e-input" type="text" placeholder="Small">
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="text" placeholder="Normal">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6"><b>Input & Elements</b></div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group">
                                        <input class="e-input" type="text" placeholder="Date of Birth">
                                        <span class="e-input-group-icon e-date-icon"></span>
                                    </div>
                                </div>
                                <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6">
                                    <div class="e-input-group e-float-icon-left">
                                        <span class="e-input-group-icon e-upload-picture"></span>
                                        <div class="e-input-in-wrap">
                                        <input class="e-input" type="text" placeholder="Upload Picture">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>

        <div class="row">
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">General</h5>

                        <div class="mb-3">

                            <ejs-textbox floatLabelType="Auto" cssClass="e-outline" placeholder="Producto"></ejs-textbox>

                        </div>

                        <div class="mb-3">

                        </div>

                        <div class="mb-3">
                            <div class="col-xs-6 col-sm-6 col-lg-6 col-md-6 small-textbox">
                                <div class="e-input-group e-small">
                                    <input class="e-input" type="text" placeholder="Small">
                                </div>
                            </div>
                        </div>


                    </div>
                </div> <!-- end card -->
            </div>

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="text-uppercase bg-light p-2 mt-0 mb-3">General</h5>

                        <div class="mb-3">
                            <label for="product-name" class="form-label">Product Name <span class="text-danger">*</span></label>
                            <input type="text" id="product-name" class="form-control" placeholder="e.g : Apple iMac">
                        </div>

                        <div class="mb-3">
                            <label for="product-reference" class="form-label">Reference <span class="text-danger">*</span></label>
                            <input type="text" id="product-reference" class="form-control" placeholder="e.g : Apple iMac">
                        </div>

                    </div>
                </div> <!-- end card -->
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


.e-upload-picture:before {
        content: '\e60f';
        font-family: e-icons;
        font-size: 14px;
    }

    .small-textbox {
        padding-top: 5px;
    }

    .tailwind .small-textbox,
    .tailwind-dark .small-textbox {
        padding-top: 3px;
    }

    .e-bigger .small-textbox {
        padding-top: 10px;
    }

    .tailwind.e-bigger .small-textbox,
    .tailwind-dark.e-bigger .small-textbox {
        padding-top: 1px;
    }

    .content-wrapper.textbox-default {
        width: 90%;
        margin: 0 auto;
        min-width: 185px;
    }

    .content-wrapper.textbox-default div.row {
        padding: 15px 0px;
    }

    .control-label {
        padding: 24px 0px 0px 0px;
        font-size: 12px;
        opacity: 0.54;
    }

    @media only screen and (max-width: 480px) {
        .content-wrapper.textbox-default,
        {
            width: 92%;
        }
        .col-xs-6,
        .col-xs-4,
        .col-xs-12 {
            padding: 10px 5px;
            width: 100%;
        }
        .content-wrapper.textbox-default div.row {
            padding: 0px;
        }
    }
    .e-outline.e-float-input,
    .e-outline.e-float-input.e-control-wrapper {
        margin-top: 0;
    }
    .fabric .row.material,
    .bootstrap .row.material,
    .bootstrap4 .row.material,
    .highcontrast .row.material,
    .tailwind .row.material,
    .bootstrap5 .row.material,
    .bootstrap5-dark .row.material,
    .tailwind-dark .row.material,
    .fabric-dark .row.material,
    .bootstrap-dark .row.material,
    .fluent .row.material,
    .fluent-dark .row.material {
        display: none;
    }
    #description td {
        vertical-align: top;
    }
    .tailwind .e-upload-picture:before,
    .tailwind-dark .e-upload-picture:before,
    .material3 .e-upload-picture:before,
    .material3-dark .e-upload-picture:before {
        content: '\e712';
        font-size: 17px;
    }

    .e-bigger .e-upload-picture::before {
        font-size: 17px;
    }

    .tailwind.e-bigger .e-upload-picture:before,
    .tailwind-dark.e-bigger .e-upload-picture:before {
        font-size: 20px;
    }

    .bootstrap4 .e-upload-picture::before {
        content: '\e769';
        font-family: e-icons;
    }

    .bootstrap5 .e-upload-picture::before,
    .bootstrap5-dark .e-upload-picture::before {
        content: '\e712';
        font-family: e-icons;
    }

    .fluent .e-upload-picture::before,
    .fluent-dark .e-upload-picture::before {
        content: '\e712';
        font-family: e-icons;
    }

    .fluent .e-float-input.e-control-wrapper.e-filled,
    .fluent-dark .e-float-input.e-control-wrapper.e-filled {
        margin-top: 0px;
    }


</style>
