pragma solidity ^0.8.0;
contract B {
    uint public f7;
    function f() public view returns (uint) {
        return f7;
    }
    function g() public view mutates returns(uint) {
        f7 = 1;
    }
}
