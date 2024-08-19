<script>
  import Account from './Account.svelte';

  import { accounts } from './store';
  import { onMount } from 'svelte';

  // Example function to fetch data
  async function fetchData() {
    const response = await fetch('http://localhost:8000/accounts');
    const data = await response.json();
    accounts.set(data); // Update the store with the fetched data
  }

  // Fetch data on component mount
  onMount(fetchData);
</script>

<style>
  .grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(230px, 1fr));
    gap: 10px;
    padding: 1rem;
    box-sizing: border-box;
  }
</style>

<div class="grid-container">

  {#if $accounts !== null}
    {#each $accounts as account}
      <Account account={account} />
    {/each}
  {:else}
    <p>Loading...</p>
  {/if}
</div>
