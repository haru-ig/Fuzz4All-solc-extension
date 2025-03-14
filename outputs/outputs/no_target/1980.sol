pragma solidity ^0.8.0;
contract RevertSematic {
    uint public x;
    function f() public {
        x >>= 1;
    }
}
