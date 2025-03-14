pragma solidity ^0.8.0;
contract Mod2 {
    uint a;
    uint x;
    function update(uint y) private {
        require(y > 0);
        a = uint(y);
    }
    function get(uint x) private returns(uint) {
        require(uint(x) == a);
        return a;
    }
    function f1() public {
        a--;
        update(x);
        get(x);
    }
}
