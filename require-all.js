const lodash = require('lodash')

const funcs = ['first', 'join', 'last']
const items = ['a', 'b']
const index = Math.floor(Math.random() * funcs.length)

console.log(index)
console.log(lodash[funcs[index]](items))
