pragma solidity ^0.8.0;
contract MutatedAccount {
    	uint[] memory storage numbers;
    	uint public immutable arrayNumber;
    	constructor(uint _elementCount) {
    	for (uint i = 0; i < _elementCount; i++) {
    		numbers.push(i);
    	}
    	arrayNumber = _elementCount;
    	}
}
