pragma solidity ^0.8.0;
contract R {
    function g() public pure {
        K k;
        unchecked { k.m(42); }
    }
}
