import { defineStore } from 'pinia'

export const useCounterStore = defineStore('counter', {
  state: () => {
    return {
        count: 0,
        nombre:'',
        edad:0,
        productos:[]
    }
  },
  // could also be defined as
  // state: () => ({ count: 0 })
  actions: {
    increment(val) {
      this.count = val;
    },
    addProducto(myData){
        /* let myData = {
            id: 1,
            nombre:'Coca Cola'
        } */
        //console.log(myData);

        this.productos.push(myData);

        //una forma de iterar el array de objetos
        //por cada elemento que recorre podemos hacer algo
        //this.productos.forEach(dato => {
        //    dato.id=99;
        //});

        // otra forma de recorrer el array
        //for (let i = 0; i < this.productos.length; i++) {
        //    const element = this.productos[i];
        //    element.id=99;
        //}


        console.log(this.productos);
    }
  },
  persist: {
    enabled: true,
    strategies: [
      { storage: sessionStorage, paths: ['productos'] },
      { storage: localStorage, paths: ['nombre'] },
    ],
  },
})
