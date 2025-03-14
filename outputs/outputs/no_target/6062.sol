pragma solidity ^0.8.0;
contract Mod {
    uint a;
    uint x;
    function update(uint y) private {
        a = uint(y);
    }
    function get(uint x) private returns(uint) {
        return a;
    }
    function f1() public {
        update(1U);
        get(-1U);
    }
}
