pragma solidity ^0.8.0;
contract ArrayInitValue {
    string[] public a;
    function f() public returns(int) {
        a.push("hello");
        return 1;
    }
}
