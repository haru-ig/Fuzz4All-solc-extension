pragma solidity ^0.8.0;
contract Mutated6f {
    bytes8 a;
    function a() public pure {
        if (a) revert(0);
        a = keccak256("1");
    }
}
