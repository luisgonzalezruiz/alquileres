/*==============================================================*/
/* Table: rubros                                                */
/*==============================================================*/
create table rubros (
   rub_codigo           SERIAL               not null,
   rub_descripcion      VARCHAR(250)         not null,
   constraint PK_RUBROS primary key (rub_codigo)
);

create table categorias (
   cat_codigo           SERIAL               not null,
   cat_descripcion      VARCHAR(250)         null,
   constraint PK_CATEGORIAS primary key (cat_codigo)
);

create table marcas (
   mar_codigo           SERIAL               not null,
   mar_descripcion      VARCHAR(250)         not null,
   constraint PK_MARCAS primary key (mar_codigo)
);

create table modelos (
   mod_codigo           SERIAL               not null,
   mar_codigo           INT4                 null,
   mod_descripcion      VARCHAR(250)         null,
   constraint PK_MODELOS primary key (mod_codigo)
);

alter table modelos
   add constraint FK_MODELOS_REFERENCE_MARCAS foreign key (mar_codigo)
      references marcas (mar_codigo)
      on delete restrict on update restrict;

create table lineas (
   lin_codigo           SERIAL               not null,
   lin_descripcion      VARCHAR(250)         not null,
   constraint PK_LINEAS primary key (lin_codigo)
);

create table unidades (
   uni_codigo           SERIAL               not null,
   uni_descripcion      VARCHAR(250)         not null,
   constraint PK_UNIDADES primary key (uni_codigo)
);

create table indicador_iva (
   iva_codigo           VARCHAR(10)          not null,
   iva_descripcion      VARCHAR(100)         not null,
   iva_tasa             NUMERIC(7,3)         not null,
   cuenta_venta         VARCHAR(20)          null,
   cuenta_compra        VARCHAR(20)          null,
   constraint PK_INDICADOR_IVA primary key (iva_codigo)
);

create table productos (
   pro_codigo           SERIAL               not null,
   rub_codigo           INT4                 null,
   cat_codigo           INT4                 null,
   mar_codigo           INT4                 null,
   mod_codigo           INT4                 null,
   lin_codigo           INT4                 null,
   uni_codigo           INT4                 null,
   pro_codigo_local     VARCHAR(50)          not null,
   pro_codigo_barra     VARCHAR(250)         null,
   pro_descripcion_local VARCHAR(500)         not null,
   pro_descripcion_origen VARCHAR(500)         null,
   pro_presentacion     VARCHAR(50)          null,
   pro_costo_ml         NUMERIC(20,4)        null,
   pro_costo_me         NUMERIC(20,4)        null,
   pro_activo           CHAR(1)              null,
   pro_inventario       CHAR(1)              null,
   pro_compras          CHAR(1)              null,
   pro_ventas           CHAR(1)              null,
   pro_activo_fijo      CHAR(1)              null,
   pro_tipo             CHAR(2)              null
      constraint CKC_PRO_TIPO_PRODUCTO check (pro_tipo is null or (pro_tipo in ('MP','IN','PT','RE'))),
   pro_componente       CHAR(1)              null,
   pro_obs1             VARCHAR(500)         null,
   pro_obs2             VARCHAR(500)         null,
   pro_referencia       VARCHAR(100)         null,
   iva_compra           VARCHAR(10)          null,
   iva_venta            VARCHAR(10)          null,
   created_at           timestamp(0) without time zone                 null,
   updated_at           timestamp(0) without time zone                 null,
   constraint PK_PRODUCTOS primary key (pro_codigo)
);

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_RUBROS foreign key (rub_codigo)
      references rubros (rub_codigo)
      on delete restrict on update restrict;

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_CATEGORI foreign key (cat_codigo)
      references categorias (cat_codigo)
      on delete restrict on update restrict;

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_MARCAS foreign key (mar_codigo)
      references marcas (mar_codigo)
      on delete restrict on update restrict;

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_MODELOS foreign key (mod_codigo)
      references modelos (mod_codigo)
      on delete restrict on update restrict;

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_LINEAS foreign key (lin_codigo)
      references lineas (lin_codigo)
      on delete restrict on update restrict;

alter table productos
   add constraint FK_PRODUCTO_REFERENCE_UNIDADES foreign key (uni_codigo)
      references unidades (uni_codigo)
      on delete restrict on update restrict;






