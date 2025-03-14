pragma solidity ^0.8.0;
contract m04 {
    uint8[] public x00 = [0, 1];
    uint8[] public x20 = [2, 0];
    uint8[] public x80 = [8, 0];
    uint8[] public x1F = [1, 0];
    uint8[] public x40 = [0, 4];
    uint8[] public xAF = [0xff, 0xff];
    uint8[] public xFF = [0xff, 0xff];
    function g0() public view returns(uint8) {
        return x80[0];
    }
    function g1() public view returns(uint8) {
        return x00[0];
    }
    function g2() public view returns(uint8) {
        return xFF[0];
    }
    function g3() public view returns(uint8) {
        return x1F[0];
    }
    function g4() public view returns(uint8) {
        return x20[0];
    }
    function g5() public view returns(uint8) {
        return x40[0];
    }
    function g6() public view returns(uint8) {
        return x00[1];
    }
    function g7() public view returns(uint8) {
        return x20[1];
    }
    function g8() public view returns(uint8) {
        return x80[1];
    }
    function g9() public view returns(uint8) {
        return x1F[1];
    }
    function g10() public view returns(uint8) {
        return x40[1];
    }
    function g11() public view returns(uint8) {
        return x00[2];
    }
    function g12() public view returns(uint8) {
        return x20[2];
    }
    function g13() public view returns(uint8) {
        return x80[2];
    }
    function g14() public view returns(uint8) {
        return x1F[2];
    }
    function g15() public view returns(uint8) {
        return x40[2];
    }
    function g16() public view returns(uint8) {
        return x00[3];
    }
    function g17() public view returns(uint8) {
        return x20[3];
    }
    function g18() public view returns(uint8) {
        return x80[3];
    }
    function g19() public view returns(uint8) {
        return x1F[3];
