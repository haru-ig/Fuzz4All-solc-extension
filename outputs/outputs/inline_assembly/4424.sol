pragma solidity ^0.8.0;
contract Emulator7 {
    uint x;
    uint y;
    constructor() public {
        x;
        write();
    }
   function add(uint x, uint y) public returns(uint) {
        uint ret = x-y;
        write();
        (x+y);
        (x+y);
        write();
        x = (value(1));
        write();
        (x+y);
        return ret;
    }
    function write() public pure {
        y;
    }
}
contract Emulator8 {
    uint x;
    function add(uint x, uint y) public returns(uint) {
        return (x-y);
    }
}
contract Emulator9 {
    uint x;
    uint y;
    function sum() public view returns (uint) {
        uint ret = 0;
        if (!isConstant) {
            ret = (x-y);
        }
        x;
        x;
        (x+y);
        x;
        x;
        ret;
        x;
    }
    constructor() public {
        x;
        write();
    }
    function add(uint x, uint y) public returns(uint) {
        x;
        uint ret = x-y;
        if (ret!= x) {
            write();

        }
        else {
            write();
        }
        return ret;
    }
    function write() public pure {
        y;
        value(2);
    }
}
