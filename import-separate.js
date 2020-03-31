import { first, join, last } from 'lodash-es'

const funcs = [first, join, last]
const items = ['a', 'b']
const index = Math.floor(Math.random() * funcs.length)

console.log(index)
console.log(funcs[index](items))
