pragma solidity ^0.8.0;
contract Test {
	DynamicArray4[] dynArr4;
	DynamicArray4[] dynArr5;

	DynamicArray4 dynArr6;

	DynamicArray4 dynArr7;

	DynamicArray4 dynArr8;

	DynamicArray4 dynArr9;
	void testWithNestedArrays1() public {
		callNestedArrays();
	}

	DynamicArray5[] dynArr10;
	void callNestedArrays() public {
		assert(dynArr10.length == 0);
		callNestedArraysInternal();
	}


	DynamicArray3 dynArr11;
	void testWithNestedArrays2() public {
		callNestedArrays();
	}
	void callNestedArraysInternal() public {
		assert(dynArr9.length == 0);
		dynArr9.push(5);
		assert(dynArr9.length == 1);
		dynArr9[0] = 6;
		assert(dynArr9.length == 2);

		assert(dynArr9.length == 1);
		dynArr9.pop();
		assert(dynArr9.length == 0);
	}
	function() external {
		assert(false);
	}
}

struct DynamicArray4 {
   uint256[4] _storeArray;
}

struct DynamicArray5 {
   uint256[5] _storeArray;
}
