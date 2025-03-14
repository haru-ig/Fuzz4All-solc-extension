pragma solidity ^0.8.0;
contract Arrays11{
    address[] public addrs;
    constructor() payable public{
        for (uint i=0; i < s.length - 1; i++) {
            addrs[i] = payable(new address(msg.sender));
        }
    }
}
contract Arrays12{
    address[2] public addrs;
    constructor() public{
        for (uint i=0; i < s.length - 1; i++) addrs[i] = payable(new address(msg.sender));
    }
}
contract Arrays13{
    address public addr;
    constructor() public{




        uint16 s[0];






    }
}

/*

Arrays2

Use arrays to store multiple types of elements. The elements must all have the same type to be an array. Each element is represented by a variable in the array of the same name.

There is no predefined maximum size of arrays. There is fixed memory usage of all arrays as they are created. But a larger array may still be larger once it has all the elements needed.

Arrays can be initialized by declaring a variable without brackets and assigning an array value to it, like:

uint16[] myArray = 1,2,3;

Otherwise there are a number of ways to create an array.

- Constant arrays: Create a fixed array of a constant value. The constant array is statically allocated at construction. The constant array is a temporary array which is destroyed at the end of the contract. The constant array should have a fixed size, or at least, be able to grow (but not shrink back).

Array literals: You can write array declarations in the same way as you write contract declarations, without the need for the "[]" keyword:

uint16[2] arrayLiteral1 = [1,2];
uint16[2] arrayLiteral2 = [1,2,3];

And also, the above array literals can make use of comma operator.
But they cannot assign one or more values to a specified array, and array literals are a restricted form of arrays, not assignable.

Array Initialization and Assignment: Array initialization can be done using an array declaration within the
