pragma solidity ^0.8.0;
contract Test20 {
    address public foo;
    function f(address a) public payable {
        unchecked {
        }
        foo = a;
    }
}
