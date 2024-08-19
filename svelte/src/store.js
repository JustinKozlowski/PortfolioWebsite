// src/store.js
import { writable } from 'svelte/store';

// Create a writable store

export const token = writable(localStorage.getItem('token') || '');

token.subscribe(value => {
    if (value) {
        localStorage.setItem('token', value);
    } else {
        localStorage.removeItem('token');
    }
});

export const accounts = writable(null);
export const groups = writable(null);
export const machines = writable(null);
