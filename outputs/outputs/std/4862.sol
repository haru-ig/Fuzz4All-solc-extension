pragma solidity ^0.8.0;
contract Test {
    string state;
    bool flag;

    function Test() {
        flag = true;
        state = "Hello";
    }

    function test() public {
        flag = false;
    }
}
