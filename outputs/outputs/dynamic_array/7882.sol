pragma solidity ^0.8.0;
contract Test22 {
    uint[] public foo;
    function f(uint[] memory) public payable {
        unchecked {
        }
        foo = foo;
    }
}

pragma solidity ^0.8.0;
contract Test23 {
    uint[] public foo;
    function f(uint[] calldata) public payable {
        unchecked {
        }
        foo = foo;
    }
}
