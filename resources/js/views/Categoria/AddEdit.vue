<template>
  <div class="modal" :class="{ open }">
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
</template>
