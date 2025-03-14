pragma solidity ^0.8.0;

contract Array_V5 {
    bytes32[5] numbers = [3];
    function () external returns (uint) {
        return add(4);
    }
    function add(uint n) public returns(uint) {


        numbers = [3, 4, 5, 6, 7];
    return numbers.length;

    }
}
