pragma solidity ^0.8.0;
contract Mutate {
    uint[24] array;
    uint x;
    function update() public {
        array[24] = array;
        x = x + array[24];
    }
}
