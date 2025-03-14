pragma solidity ^0.8.0;
contract Test2 {
    event ArrayCreate(uint i);
    uint256[] public array;
    uint public constant AMOUNT = 5;
    function Test() public {
        array[1729] = 99;
        for (uint i; i < AMOUNT; i++) {
            emit ArrayCreate(i);
        }
    }
}
