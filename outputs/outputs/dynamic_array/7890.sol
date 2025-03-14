pragma solidity ^0.8.0;
contract Test21 {
    uint[17] public foo;
    function f(uint[17] memory) public payable {
        unchecked {
        }
        foo = foo;
    }
}
