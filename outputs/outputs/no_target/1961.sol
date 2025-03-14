pragma solidity ^0.8.0;
contract DeprecatedSematic {
    uint x;
    function f() public {
        x = x == true? x - 1 : x - 2;
    }
}
