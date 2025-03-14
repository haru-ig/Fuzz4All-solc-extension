pragma solidity ^0.8.0;
contract MutatedExamples2 {
    function getUint() public view returns (uint32) {
        uint32 x = 0;
        x += 100;
        return x + 50;
    }
    function getUint1() public pure returns (uint152) {
        uint32 x = 0;
        x += 100;
        return uint152(x + 50);
    }
    function getUint2() public pure returns (uint16) {
        uint32 x = 0;
        x += 100;
        return uint16(x + 100);
    }
    function getUint3() public pure returns (uint) {
        uint32 x = 0;
        x += 100;
        return uint(x + 100);
    }
    function getUint4() public pure returns (uint8) {
        uint32 x = 0;
        x += 100;
        return uint8(x + 100) - 50;
    }
    function getUint5() public pure returns (uint7) {
        uint32 x = 0;
        x += 100;
        return uint7(x + 100.5) - 50;
    }
    function getUint6() public pure returns (uint6) {
        uint32 x = 0;
        x += 100;
        return uint6(x + 100ll) + 100;
    }
    function getUint7() public pure returns (uint32) {
        uint32 x = 0;
        x += 100;
        return uint32((uint32(x + 100))) - 100;
    }
    function getUint8() public pure returns (uint160) {
        uint32 x = 0;
        x += 100;
        return uint160(x + 2000) - 2000;
    }
    function getUint9() public pure returns (uint80) {
        uint32 x = 0;
        x += 100;
        return uint80(x + 2000.5) - 2000.5;
    }
    function getUint10() public pure returns (int) {
        uint32 x = 0;
        x += 100;
        return int(x + 2000) - 2000;
    }
    function getUint11() public pure returns (uint) {
        uint32 x = 0;
        x += 100;
        return uint(x + 2000
