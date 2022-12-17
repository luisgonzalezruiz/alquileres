<template>

<div>
    <ul>
         <li v-for="(note, index) in notes" :key="index">{{ note }}</li>
    </ul>
    <input type="text" v-model="title" @keypress.enter="save" >

</div>
    
</template>

<script>
import { ref } from "vue";

export default {
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
