pragma solidity ^0.8.0;

contract C {
	function x() public pure returns(uint) {
		return 0xab;
	}
	mapping(address => uint) private myMap;

	function myFunction(uint value) public {
		require(myMap[msg.sender] == 0xab, 'only the author');
		myMap[msg.sender] = value;
	}
}
```

**If your function only uses one parameter and you need to return that parameter in your function, but not other parameters, and you use function-like syntax to specify the contract method, it is recommended that you define your function with the following signature:**

```
function set(uint x, uint y) public ;
```

This does not use inline assembly like the previous example:
```
pragma solidity ^0.8.0;

contract C {
	function setPublic(uint x, uint y) public {
	}
	function getPublic() public view returns (uint, uint) {

	}
	mapping(address => uint) public balances;

	function getPrivate() public view returns (uint) {

	}
	mapping(address => bool) public admin;

	function setAdmin(address x, bool y) public {
	}
	event MyEvent(uint indexed key, address owner);

}
```

**If your function contains a mapping (using the syntax defined for the contract) and you need to return the map, but not other mapped elements, it is recommended that you define your function with the following signature:**
```
function getMap(address x) public view returns (uint[3] memory) {
}
```

In all cases the compiler ensures that the elements are returned with the correct types.

## Inline assembly in Solidity is a powerful tool
However, it's complexity and permissiveness mean that it should be approached with caution, and used sparingly and judiciously.

## What will the runtime do. For more information:
* https:

## What will the compiler do?
* https:

## Etherflow
* https:

## The EVM
* https:
* https:
