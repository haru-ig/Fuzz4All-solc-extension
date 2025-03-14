pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample51 {
    uint internal h = 3465;
    uint internal f1 = 2367255;
    uint internal f2 = 3504950424;
    uint internal f3 = 406125418442;
    uint internal f4 = 96873598430485681508;
    function checkH() public view returns (uint){
        return h;
    }
    event logX(uint x0, uint x1);
    function call0() public {
        uint256 a = checkH();
        logX(h, a);
    }
    function call1() public {
        f1;
        f2;
        h;
        f1;
        f2;
        a;
        f1;
    }
    function call2() public {
        f1;
        f2;
        h;
        f1;
        f2;
        a;
        f2;
    }
    function call3() public {
        f2;
        f1;
        f3;
        h;
        f1;
        f2;
        f3;
        h;
        f2;
    }
    function checkFB() public view returns (uint8 x) {
        return uint8(f1);
    }
    function checkFB(uint256 h, uint f2) public view returns (uint8 x) {
        return uint8(f1);
    }
    function checkFC() public view returns (uint8 x) {
        return uint8(f2);
