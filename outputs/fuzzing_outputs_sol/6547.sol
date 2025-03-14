pragma solidity ^0.8.0;
interface Holder {
    function f(uint x) external returns (uint);
    function g(uint x) public returns (uint);
}
contract C {
    function f() public returns (uint x) {
        return x;
    }
    function g() public payable returns (uint) {
        if (msg.value < 100000000000000000000) {
            x.add(1u);
            x = 10**20;
        }
        x.add(2u);
        x = 10**20;
    }
}
