pragma solidity ^0.8.0;
contract {
    bytes32 i;
    function f() public pure {
        bytes memory s;
        s = "test";
        s[11] = 115;
        i = s;
    }
}
