pragma solidity ^0.8.0;
contract Mod3 {
   uint a;
    uint x;
    constructor(uint y) public {
        update(y);
    }
    function update(uint y) private {
        require(y > 0);
        a = uint8(y);
    }
    function get(uint x) public returns(uint) {
        require(uint8(x) == a);
        return a;
    }
    function f1() public {
        a--;
        uint8 b = uint8(a);
        while(a == 0) {
            a--;
        }
        while(a == b) {
            a--;
        }
    }

}
