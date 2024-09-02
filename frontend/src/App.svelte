<script lang="ts">
  import Header from './lib/Header.svelte'
</script>

<main>
  <!-- <script src="https://cdn.tailwindcss.com"></script> -->
  <Header />
  <p class="read-the-docs">
    This will be the paragraph about me
  </p>
  <!-- Add this to a Svelte component -->
  <div class="text-red-500">
    If you see this text in red, Tailwind CSS is loaded properly.
  </div>
</main>

<style>
  @import './app.css'; /* Ensure Tailwind CSS is imported */
</style>
