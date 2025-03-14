pragma solidity ^0.8.0;
contract Test27 {
    string[] public strings;
    function f() public {
        delete strings[0];
    }
}
