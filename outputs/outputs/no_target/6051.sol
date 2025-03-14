pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function update(uint x) private returns (uint) {
        a = 2*x;
        return a;
    }
    function get() public view returns(uint) {
        return a;
    }
}
