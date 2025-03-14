pragma solidity ^0.8.0;

contract Array {
    using Arithmetic for uint;
    uint public arrayA;

    arrayA = [3];

    function write(uint value) public {
        arrayA.write(value);
    }

    function read() public view returns (uint) {
        return arrayA.read();
    }



}
