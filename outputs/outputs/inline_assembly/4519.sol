pragma solidity ^0.8.0;
contract Emulator60 {
    constructor() public {}

    function write(uint y) public { x = y; }
    function init() public {
        if (x <= 0) y = x;
        else y = x - y;
    }
}
contract Emulator61 {
    constructor(uint x) public {
        x = x;
    }
    function sub(uint x,uint y) public pure returns (uint) { return y - x; }
    function read() public returns (uint) { return x; }
    function write(uint y) public { x = y; }
}
contract Emulator62 {
    uint x; uint y;
    constructor(uint x) public { this.x = x; }
    function read() public returns (uint) {  return x; }
    function init() public { if (x <=0) y = x; else y = x - y; }
}
contract Emulator63 {
    uint x; uint y;
    constructor(uint x) public { this.x = x; }
    function read() public returns (uint) {  return x; }
    function init() public { if (x >=0) y = x; else y = x - y; }
}
contract Emulator64 {
    uint x; uint y;
    constructor(uint x) public { this.x = x; }
    function sub(uint x,uint y) public pure returns (uint) { return x - y; }
    function read() public returns (uint) { return x; }
    function write(uint y) public { x = y; }
}
contract Emulator65 {
    uint x; uint y;
    constructor(uint x) public { this.x = x; }

    function write(uint y) public { x = y; x--; }
    function init() public { if (x<=0) y = x; else x--; }

    function sub(uint x,uint y) public pure returns (uint) { return x - y; }

    function init() public { if (x >=0) y = x+y; else y = x + y-x-1; }
}
