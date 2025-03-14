pragma solidity ^0.8.0;
contract Mutated12{
    function mutated12(uint[3] memory a) public pure returns (uint) {
        uint b = a[1];
        uint c = a[0];
        a[1] = 5;
        a[0] = c;
        return a[0];
    }
}
