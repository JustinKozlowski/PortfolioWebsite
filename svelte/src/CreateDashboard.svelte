<script>
  import CreateMachine from './CreateMachine.svelte';
  import CreateAccount from './CreateAccount.svelte';
</script>

<style>
  .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 10px;
  }
</style>

<h1>Create Things</h1>
<div class="grid-container">
  <CreateAccount />
  <CreateMachine ></CreateMachine>
  <CreateMachine ></CreateMachine>
</div>
