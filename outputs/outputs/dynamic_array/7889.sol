pragma solidity ^0.8.0;
contract Test24 {
    uint[] public foo;
    function f(uint[] memory) public payable {
        unchecked {
        }
        foo = foo;
    }
}
