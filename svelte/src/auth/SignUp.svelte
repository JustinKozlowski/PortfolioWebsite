<script>
    // Logic for handling account creation
    let email = '';
    let password = '';
    let confirmPassword = '';
    let loading = false;
    let error = '';

    async function createAccount(event) {
        event.preventDefault();
        error = '';
        loading = true;

        if (password !== confirmPassword) {
            error = 'Passwords do not match.';
            loading = false;
            return;
        }

        try {
            const formData = new FormData();
            formData.append('email', email);
            formData.append('password', password);

            const response = await fetch('http://localhost:8000/create-account', {
                method: 'POST',
                body: formData,
            });

            if (!response.ok) {
                throw new Error('Account creation failed');
            }

            const data = await response.json();
            // Handle successful account creation (e.g., navigate to login)
            navigate('/login');
        } catch (err) {
            error = 'Account creation failed. Please try again.';
        } finally {
            loading = false;
        }
    }
</script>


<style>
  main {
    max-width: 400px;
    margin: 0 auto;
    padding: 2rem;
    border: 1px solid #ddd;
    border-radius: 8px;
    background-color: #f9f9f9;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  h1 {
    text-align: center;
    margin-bottom: 1.5rem;
    color: #333;
  }

  form {
    display: flex;
    flex-direction: column;
  }

  label {
    margin-bottom: 1rem;
    color: #555;
  }

  label input {
    width: 100%;
    padding: 0.5rem;
    margin-top: 0.5rem;
    border: 1px solid #ccc;
    border-radius: 4px;
  }

  button {
    padding: 0.75rem;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    transition: background-color 0.3s;
  }

  button:hover {
    background-color: #0056b3;
  }

  .error-message {
    color: red;
    text-align: center;
    margin-top: 1rem;
  }
</style>

<main>
    <h1>Create Account</h1>
    <form on:submit={createAccount}>
        <label>
            Email:
            <input type="email" bind:value={email} required />
        </label>
        <label>
            Password:
            <input type="password" bind:value={password} required />
        </label>
        <label>
            Confirm Password:
            <input type="password" bind:value={confirmPassword} required />
        </label>
        <button type="submit" disabled={loading}>Create Account</button>
    </form>
    {#if error}
        <p style="color: red;">{error}</p>
    {/if}
    {#if loading}
        <p>Loading...</p>
    {/if}
</main>
