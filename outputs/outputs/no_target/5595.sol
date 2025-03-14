pragma solidity ^0.8.0;
 contract B {
    function f() public pure {
        bytes memory b;
        bytes memory ab = hex"0817271d00000000000000000000000000000000000000000000000000000000";
        bytes memory a = hex"f8";
        b = a ^ ab;
        bytes memory ac = b;
    }
}
