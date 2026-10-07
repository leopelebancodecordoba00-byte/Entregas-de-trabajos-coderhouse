# RetailPro — Base de Datos de Ventas

## Descripción del proyecto

**RetailPro** es un proyecto de base de datos desarrollado para gestionar y analizar información de ventas de una empresa de tecnología.

El proyecto permite almacenar información sobre:

- Categorías de productos.
- Productos disponibles.
- Clientes.
- Ventas realizadas.

Además, se desarrollan consultas SQL orientadas al análisis comercial para obtener métricas e identificar oportunidades de negocio.

## Objetivos

El objetivo principal del proyecto es construir una base de datos relacional que permita:

- Organizar la información comercial.
- Registrar clientes, productos y ventas.
- Relacionar las distintas entidades mediante claves primarias y foráneas.
- Obtener indicadores de ventas mediante consultas SQL.
- Identificar productos y clientes relevantes para el negocio.
- Generar información que pueda ser utilizada posteriormente en herramientas de análisis como Power BI.

## Modelo de datos

La base de datos está compuesta por cuatro tablas principales:

### Categorías

Contiene las categorías a las que pertenecen los productos.

- `id_categoria`
- `nombre_categoria`
- `descripcion`

### Clientes

Almacena la información de los clientes.

- `id_cliente`
- `nombre_cliente`
- `email`
- `ciudad`
- `fecha_registro`

### Productos

Contiene los productos comercializados.

- `id_producto`
- `nombre_producto`
- `id_categoria`
- `precio`
- `stock`
- `activo`

### Ventas

Registra las operaciones realizadas.

- `id_ventas`
- `id_cliente`
- `id_producto`
- `cantidad`
- `precio_unitario`
- `fecha_venta`

Las relaciones entre las tablas permiten vincular cada venta con un cliente y un producto, y cada producto con su correspondiente categoría.

## Herramientas utilizadas

- **SQL Server** para la creación y administración de la base de datos.
- **SQL** para la creación de tablas, carga de datos y consultas.
- **GitHub** para el almacenamiento y versionado del proyecto.
- **Power BI** para el análisis y visualización de los datos.

## Estructura del proyecto

Una estructura posible del repositorio es:

```text
RetailPro/
│
├── README.md
│
├── SQL/
│   ├── 01_creacion_base_datos.sql
│   ├── 02_carga_datos.sql
│   ├── 03_consultas_negocio.sql
│   └── 04_consultas_joins.sql
│
└── PowerBI/
    └── RetailPro.pbix
```

## Cómo ejecutar el proyecto

### 1. Crear la base de datos

Abrir SQL Server Management Studio y ejecutar el script de creación de la base de datos.

El script crea la base:

```sql
CREATE DATABASE Ventas_Tech_DB;
```

### 2. Crear las tablas

Ejecutar las sentencias `CREATE TABLE` para crear:

- `categorias`
- `clientes`
- `productos`
- `ventas`

Las tablas utilizan claves primarias y foráneas para mantener la integridad de los datos.

### 3. Cargar los datos

Ejecutar los comandos `INSERT INTO` incluidos en el script correspondiente.

Esto permitirá cargar las categorías, clientes, productos y ventas de ejemplo utilizadas en el proyecto.

### 4. Ejecutar las consultas

Una vez creada y cargada la base de datos, ejecutar las consultas SQL de análisis.

Entre los análisis realizados se encuentran:

- Facturación mensual.
- Cantidad de pedidos.
- Ticket promedio.
- Productos más vendidos.
- Clientes con mayor gasto.
- Comparación de facturación mensual.
- Clientes sin ventas.
- Productos sin ventas.
- Consolidación de información mediante `UNION ALL`.

### 5. Análisis en Power BI

Los resultados pueden conectarse posteriormente a Power BI para crear visualizaciones y reportes comerciales.

## Principales resultados

El análisis de los datos permite identificar diferentes oportunidades comerciales.

Entre los principales hallazgos se encuentran:

- El **Mouse Inalámbrico** presenta el mayor volumen de unidades vendidas.
- El **Laptop Pro 15** concentra una parte importante de la facturación.
- Existe concentración de facturación en determinados clientes, lo que permite identificar oportunidades de fidelización y diversificación de ventas.

## Tecnologías

| Tecnología | Uso                         |
| ---------- | --------------------------- |
| SQL Server | Gestión de la base de datos |
| SQL        | Consultas y análisis        |
| GitHub     | Versionado y almacenamiento |
| Power BI   | Visualización y análisis    |

## Autor

Proyecto desarrollado como parte de una actividad académica de análisis de datos y bases de datos.
