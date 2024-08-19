<script>
  import Graph from './Graph.svelte';

  let graphs = [
    { title: 'Machine 1' },
    { title: 'Machine 2' },
    { title: 'Machine 3' }
  ];
</script>

<style>
  .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
    gap: 10px;
  }
</style>

<div class="grid-container">
  {#each graphs as graph}
    <Graph title={graph.title} />
  {/each}
</div>
