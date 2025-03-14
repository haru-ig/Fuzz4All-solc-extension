pragma solidity ^0.8.0;
contract C {
    function f() public payable view returns(uint) {}
    function g(uint x) public payable view returns(uint) {
        return 2 * x;
    }
}
