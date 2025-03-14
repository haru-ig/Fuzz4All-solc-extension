pragma solidity ^0.8.0;
contract Emulator4 {
    uint x; uint y; uint z;
    function init() public {
        if (x<=y) {
            if (y<=0) { y=x; }
            else y = x-y;
        } else { y = x-x; }
    }
    function add(uint x,uint y) public pure returns(uint) { return x+y; }
    function write() public {}
}
