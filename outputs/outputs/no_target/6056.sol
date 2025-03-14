pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function update(uint x) private {
        a = x;
    }
    function get() public returns(uint) {
        return a + b;
    }
    uint b = 10;
}
