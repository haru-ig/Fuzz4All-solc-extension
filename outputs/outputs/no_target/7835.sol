pragma solidity ^0.8.0;
contract Contract {
    function f() internal pure returns(uint40) {
    }
    function f2() internal pure returns(uint8) {
    }
    function f3() internal pure returns(uint80) {
    }
    function f4() internal pure returns(bool) {
        return true;
    }
    function f5() internal pure returns(bool8) {
    }
    function f6() internal pure returns(bool16) {
    }
    function f7() internal pure returns(bool32) {
    }
    function f8() internal pure returns(uint) {
        return 50;
    }
    function f9() internal pure returns(uint256) {
        return 50;
    }
    function f10() internal pure returns(uint40) {
        return uint40(20);
    }
    function f11() internal pure returns(uint80) {
        return uint80(20);
    }
    function f12() internal pure returns(uint) {
        return uint8(20);
    }
    function f13() internal pure returns(int) {
        return 50;
    }
    function f14() internal pure returns(int32) {
        return 50;
    }
    function f15() internal pure returns(int128) {
        return int128(20);
    }
    function f16() internal pure returns(int) {
        return -50;
    }
    function f17() internal pure returns(int8) {
        return -50;
    }
    function f18() internal pure returns(uint) {
        return int(int32(int128(50)));
    }
    function f19() internal pure returns(uint8) {
        return uint8(uint(uint(uint(int32(int8(20)))))));
    }
    function f20() internal pure returns(uint80) {
        return uint80(uint(uint(uint(int32(int16(20)))))));
    }
    function f21() internal pure returns(uint256) {
        return uint256(uint(uint(uint(int32(int8(20)))))));
    }
    function f22() internal pure returns(uint256) {
        return uint80(uint(uint(uint(int32(int16(20)))))));
    }
    function f23() internal pure returns(address) {
        returnaddress(bytes32(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint(uint)))))))))))))))))));
    }
    function f24() internal pure returns(address) {

        returnuint80(uint80(uint(uint(uint(int8(
