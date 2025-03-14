pragma solidity ^0.8.0;
contract Mutated18{
    function mutated18(uint[3] memory a) public pure returns (uint[3]) {
        uint[3] memory b;
        (a[0], a[1], b[2]) = (a[2], a[0], a[1]);
        return b;
    }
}
