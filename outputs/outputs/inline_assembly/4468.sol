pragma solidity ^0.8.0;
contract Emulator4 {
    uint x; uint y;
    function init() public {
        x = init2();
        uint ret = x+x;
        return x+x;
    }
    function add(uint x,uint y) public pure returns(uint) {
        return x+x;
    }
    function write() public {}
    function init2() private pure returns(uint) {
        uint ret = y+y;
        return ret;
    }
}
