pragma solidity ^0.8.0;
contract d {
    event e();
}
contract c {
    function f() public payable {}
    function g() public fallback() payable {}
    function h() public pure {}
    function i() public view {}
}
