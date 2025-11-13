try {
if (1 + 1 !== 2) throw new Error('Math broken');
console.log('Test passed');
process.exit(0);
} catch (err) {
console.error('Test failed:', err);
process.exit(1);
}