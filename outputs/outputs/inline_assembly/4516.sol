pragma solidity ^0.8.0;
contract Emulator7 {
    uint x; uint y;
    function init() public {
        if (x<=0) y = x;
        else y = x-y;
    }
    function sub(uint x,uint y) public returns(uint) { return y-x; }
}
