pragma solidity ^0.8.0;
contract Mutated15M{
    function mutated15(uint[4] a) public pure returns (uint) {
        uint[4] memory tmp = a;
        a[0] = 15;
        tmp[0] = a[0];
        return tmp[0];
    }
}
