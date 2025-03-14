pragma solidity ^0.8.0;
contract simpler_abi4 {
    function foo(uint8 x) public pure returns (uint32) {
        return uint32(x);
    }
    function bar(uint8 y) public pure returns (uint32) {
        return uint32(x) + uint32(1);
    }
    function baz(uint8 z) public pure returns (uint32) {
        return foo(x()) + y() - 2 + z();
    }
}
