pragma solidity ^0.8.0;
contract Test25 {
    uint8[32] public foo;
    function f(uint8[853456] memory) public {
        unchecked {
        }
        foo = foo;
    }
}
