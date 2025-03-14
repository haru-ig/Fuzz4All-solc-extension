pragma solidity ^0.8.0;
contract Mutated11{
    function mutated11(uint[2 memory] memory a) public pure returns (uint) {
        uint b;
        (a[0], b) = (6, a[1]);
        return b;
    }
}
