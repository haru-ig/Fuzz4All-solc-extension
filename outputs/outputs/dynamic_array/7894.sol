pragma solidity ^0.8.0;
contract Test24 {
    uint8[] public foo;
    function f(uint8[] memory) public payable {
        unchecked {
        }
        foo = foo;
    }
}
