
<script>
  export let account;
</script>

<style>
  .account {
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

<div class='account'>
  <h2>Account:</h2>
  <br />
  <pre>{JSON.stringify(account, null, 2)}</pre>
</div>
