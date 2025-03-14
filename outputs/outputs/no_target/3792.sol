pragma solidity ^0.8.0;
contract R1 {
        uint a;
        uint b;
    constructor() public {
        a = 0;
        b = 750;
    }
    modifier f() {
        a = 1;
        _;
        a = 2;
        b = b * 2;
        a = 3;
    }
    function setb(uint _x) public {
        a = 1;
        f();
        b = b * 2;
        a = 2;
    }
    function get() public view returns (uint) {
        return a;
    }
}
contract R2 {
    uint a;
    uint b;
    uint c;

    constructor() public {
        a = 1;
        b = 750;
        c = 0;
    }

    function seta(uint _x) public {
        a = 5;
        b = 5;
        for (uint256 _i = 0; _i <= 10; _i++){
            if (c == _i){
                b = a + _i;
            }
        }
    }
    function setb(uint _x) public {
        c = 10;
        b = 60;
        a = a + a + Math.sqrt(_x);
    }
    function setc(uint _x) public {
        c = c + _x;
        b = (c >> 60) * (c >> 60) + (c >> 50) * (c >> 50);
    }
    function get() public view returns (uint) {
        return a;
    }
}
contract R2 {
    uint160 a;
    uint160 b;
    uint8 c;

    constructor() public {
        a = (100 + 1) - 1;
        b = (2 << 50) + 26 + (a >> 100) + a;
