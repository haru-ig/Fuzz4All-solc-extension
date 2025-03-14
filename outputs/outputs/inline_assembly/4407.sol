pragma solidity ^0.8.0;
contract Emulator2 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        return ret;
    }
    function write() public pure {}
}

pragma solidity ^0.8.0;
contract Emulator3 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        x;
        x;
        (x+y);
        write();
        return ret;
    }
    function write() public pure {}
}
