pragma solidity ^0.8.0;
contract Mod4 {
    uint a;
    uint x;
    function update(uint y) private {
        require(y > 0);
        a = uint8(y);
    }
    function get(uint x) private returns(uint) {
        require(uint8(x) == a);
        return a;
    }
    function f1() public {
        a--;
        update(x);
        get(x);
    }
}
