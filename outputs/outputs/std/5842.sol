pragma solidity ^0.8.0;
contract Mutated18{
    function mutated18() external {
        uint[2] memory a;
        uint b;
        (a[0], b) = (2, a[1]);
    }
}
