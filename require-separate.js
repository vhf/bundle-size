const first = require('lodash/first')
const join = require('lodash/join')
const last = require('lodash/last')

const funcs = [first, join, last]
const items = ['a', 'b']
const index = Math.floor(Math.random() * funcs.length)

console.log(index)
console.log(funcs[index](items))
