<!-- App.svelte -->
<script>
    import Router from "svelte-spa-router";
    import TiledGraphs from './TiledGraphs.svelte';
    import Login from './auth/Login.svelte';
    import SignUp from './auth/SignUp.svelte';
    import CreateMachine from './CreateMachine.svelte';
    import CreateAccount from './CreateMachine.svelte';
    import CreateDashboard from './CreateDashboard.svelte';
    import Accounts from './Accounts.svelte';

    const routes = {
        // '/': Home,
    //     '/dashboard': wrap({
    //     component: Dashboard,
    //     conditions: [
    //         () => isAuthenticated(),
    //     ],
    //     userData: { redirect: '/login' }, // Redirect if not authenticated
    // }),
        '/login': Login,
        '/sign-up': SignUp,
        '*': NotFound
    }
</script>

<main>
    <Router {routes} />
</main>
<!-- <main> -->
<!--     {#if $accounts !== null} -->
<!--       <Login /> -->
<!--       <SignUp /> -->
<!--     {:else} -->
<!--       <p>Loading...</p> -->
<!--       <Accounts /> -->
<!--       <CreateDashboard /> -->
<!--     {/if} -->
<!--     <h1>Tiled Graphs Example</h1> -->
<!--     <TiledGraphs /> -->
<!-- </main> -->
