pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function update(uint x) private returns (uint) {
        a = x;
    }
    function get() public view returns(uint) {
        return a;
    }
}
