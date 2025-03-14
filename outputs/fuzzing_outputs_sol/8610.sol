pragma solidity ^0.8.0;
contract Mutator {
    uint[] public array = [10, 20, 30];

    function increment() public {
        uint x = array[5];
        array[5] = array[5] + 1;
        array[3] = x + 1;
    }
}
