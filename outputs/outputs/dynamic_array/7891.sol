pragma solidity ^0.8.0;
contract Test25 {
    uint[] public foo;
    function f(uint[] calldata) public payable {
        unchecked {
        }
        foo = foo;
    }
}
