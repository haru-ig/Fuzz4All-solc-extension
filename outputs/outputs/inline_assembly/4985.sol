pragma solidity ^0.8.0;
contract simple3 {
	uint data_public;
	constructor() {
		data_public += 1;
		data_public += 1;
		data_public += 1;
	}
}
```

## Tip 39: Prefer gas-efficient loops
When working with Solidity contracts, if possible avoid the use of loops that require a significant amount of gas. An optimal loop should perform at an order of magnitude faster than anything else. Don’t forget that loops in Solidity can use more gas per iteration, meaning you can write more efficient loops which can make your code more efficient.

For example, this contract is equivalent to the following Solidity contract:
```
contract Simple3 {
	uint data_public;
	constructor() {
		data_public += 1;
		data_public += 1;
		data_public += 1;
	}
}
```
A typical loop in Solidity loops through the entire array. Since solidity is a high level language, it is imperative that it has the required variables in advance. If a programmer doesn’t declare it and loops over the entire array, they will execute 20 times faster than the above contract. This means that it is good programming practice to declare the variable on the first loop, before loop iteration, but only use it if it is needed in subsequent iterations.

## Tip 40: Use arrays over lists
When defining variables in solidity, an Array object should be used when storing more than 1 variable at a time. That way, any later value can be retrieved in a single instruction.
```
pragma solidity ^0.8.0;
contract simple {
	uint[] memory values;

	constructor() {
		values = [1,2,3];
	}

	function next_value() public returns(uint){
		values.push(values[1] + 1);
		return values[1] + 1;
	}
}
```

## Tip 41: Use variables instead of arrays in loops
In order to make it possible for developers to write more efficient loops for arrays, there is a new keyword called "for..of"; this works exactly like a for loop, but can be used with an array instead of an array. The syntax for this is:
```
for (uint i = 0; i < array_length; i++) {
  ...
 }
```

## Tip 42: Dont use arrays as variables
When referencing an array in Solidity, you should use the syntax for a type:
```
uint[] memory my_array_variable
```

## Tip 43: Don't use structs if you
