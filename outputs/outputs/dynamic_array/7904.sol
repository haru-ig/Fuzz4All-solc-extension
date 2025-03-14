pragma solidity ^0.8.0;
contract Test297 {
    delegatecall(uint8[5] calldata) public;
    function g(uint8[5] calldata) public {
        uint32[7] memory foo;
        unchecked {
            foo = foo;
        }
        foo = foo;
        unchecked {
            foo[foo.length] = foo;
        }
        foo = foo;
    }
}
