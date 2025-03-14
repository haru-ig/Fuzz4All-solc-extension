pragma solidity ^0.8.0;

contract C1 {
    function c() payable public { }
}

contract C2 {
    function c() public payable { }
}

contract C3 {
    function c() public {}
}
contract C4 {
    fallback function f() public pure returns(uint) {}
    function g() public {

        f().fallback();
    }
}
contract C5 {
    fallback function f() public pure returns(uint) {}
    receive() external {

        f().fallback();
    }
}
contract C6 {
    fallback function f() public pure returns(uint) {}
    fallback receive() {}
}
contract Caller is C1, C2, C3 {
    function c() public payable { }
    function c() public { }
    fallback() external payable { }
    receive() external {}
    fallback() external { }
}
