const funcs = ['first', 'join', 'last']
const items = ['a', 'b']

const lodash = {}

funcs.forEach(func => {
  lodash[func] = require(`lodash/${func}`)
})

console.log(lodash.first(items))
console.log(lodash.join(items))
console.log(lodash.last(items))
