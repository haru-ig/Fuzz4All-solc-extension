pragma solidity ^0.8.0;
contract B {
    constructor(uint256 public constant one, uint256 public constant two) {
        assert(one == 1);
        assert(two == 2);
        assert(two > one);
    }
    function get(uint256 arg) external view returns(uint128) {
        return 1 + (arg * 2);
    }
}
contract C {
    uint256 constant two = 2;
    uint256 constant one = 1;
    B constant b = new B(one, two);
    uint256[4294967295] internal fixedUint;
    constructor() {
        fixedUint[0] = 16;
        fixedUint[3] = 24;
    }
    function one() public view returns(uint256) {
        return one;
    }
    function two() public view returns(uint256) {
        return two;
    }
    function uint256Test() public {
        uint256 n256 = 56;
        uint256[4294967295] memory _fixedUint = new uint256[4294967295];
        _fixedUint[0] = 11;
        _fixedUint[3] = 23;
        assert(n256 == _fixedUint[0]);
        assert(n256 == _fixedUint[3]);
    }
    function nestedTest() public {
        string[6][7] memory _string = new string[](6, new string[](7));
        _string[0][7] = "09";
        _string[0][5] = "05";
        _string[0][6] = "06";
        _string[0][2] = "02";
        _string[0][4] = "04";
        _string[1][7] = "19";
        _string[1][5] = "15";
        _string[1][6] = "16";
        _string[1][2] = "12";
        _string[1][4] = "14";
        _string[2][7] = "29";
        _string[2][5] = "25";
        _string[2][6] = "26";
        _string[2][2
