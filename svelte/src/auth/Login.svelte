<script>
    import { onMount } from 'svelte';
    import { navigate } from "svelte-routing";

    let email = '';
    let password = '';
    let loading = false;
    let error = '';

    async function login(event) {
        event.preventDefault(); // Prevent the default form submission behavior
        error = '';
        loading = true;

        try {
            // Create a FormData object and append the form values
            const formData = new FormData();
            formData.append('username', email);
            formData.append('password', password);

            // Send the form data using fetch
            const response = await fetch('http://localhost:8000/token', {
                method: 'POST',
                body: formData,
            });

            if (!response.ok) {
                throw new Error('Login failed');
            }

            const data = await response.json();
            // Handle the token (store it, dispatch event, etc.)
            localStorage.setItem('token', data.access_token);
            // Navigate to another page after successful login (e.g., home page)
            navigate("/");
        } catch (err) {
            error = 'Login failed. Please check your credentials.';
        } finally {
            loading = false;
        }
    }

    function goToCreateAccount() {
        navigate('/create-account');
    }
</script>

<style>
  form {
    max-width: 300px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
  }

  input {
    margin-bottom: 1em;
    padding: 0.5em;
  }
</style>

<main>
    <h1>Login</h1>
    <form on:submit={login}>
        <label>
            Email:
            <input type="email" bind:value={email} required />
        </label>
        <label>
            Password:
            <input type="password" bind:value={password} required />
        </label>
        <button type="submit" disabled={loading}>Login</button>
    </form>
    {#if error}
        <p style="color: red;">{error}</p>
    {/if}
    {#if loading}
        <p>Loading...</p>
    {/if}
    <button on:click={goToCreateAccount}>Create Account</button>
</main>
