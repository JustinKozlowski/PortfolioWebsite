
<script>
  export let machine;
</script>

<style>
  .machine {
    width: 200px; /* Adjust as per your tile size */
    height: 150px; /* Adjust as per your tile size */
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    border-radius: 4px;
    padding: 1rem;
    text-align: center;
    margin: 1rem;
  }
</style>

<div class='machine'>
  <h2>Machine:</h2>
  <br />
  <pre>{JSON.stringify(machine, null, 2)}</pre>
</div>
