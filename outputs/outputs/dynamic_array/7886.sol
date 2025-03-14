pragma solidity ^0.8.0;
contract Test24 {
    uint[] public foo;
    function f(uint[] memory) public pure {
        unchecked {
        }
        foo = foo;
    }
}
contract Test25 {
    uint[] public foo;
    function f(uint[] calldata) public pure {
        unchecked {
        }
        foo = foo;
    }
}
