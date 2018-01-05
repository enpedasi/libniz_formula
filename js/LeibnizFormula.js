var s = 0.0;
for (var i = 0; i<=1e8; i++){
  s += Math.pow(-1.0, i) / (2*i + 1);
}
console.log('%d',4*s);
