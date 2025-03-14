pragma solidity ^0.8.0;

contract Array is IArray {
    uint[1] myArray;
    function add(uint x) public {
        myArray.push(x);
        IArray.setUint(myArray, 0, myArray.length() - 1);
    }
}
