pragma solidity ^0.8.0;
contract Non_mutating {
    uint256 myUint;
    uint256[] myArray;

    function my_function() public pure {
        myUint = 99999;
        myArray = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
    }

    function my_function_mutated() public pure {
        my_function() @ 0xffffffffffffffff;
        myUint += 1;
        myArray[7] += 1;
    }
}
