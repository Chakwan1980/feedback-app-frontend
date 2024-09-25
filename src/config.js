// config.js

// Host y puerto del backend, usando variables de entorno si están definidas
const BACKEND_HOST = process.env.FEEDBACK_BACKEND_HOST || "127.0.0.1";
const BACKEND_PORT = process.env.FEEDBACK_BACKEND_PORT || 55149;

// URL completa del backend
export const BACKEND_URL = `http://${BACKEND_HOST}:${BACKEND_PORT}/feedback`;

console.log(`BACKEND_HOST: ${BACKEND_HOST}`);
console.log(`BACKEND_PORT: ${BACKEND_PORT}`);
console.log(`BACKEND_URL: ${BACKEND_URL}`);

