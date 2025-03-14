pragma solidity ^0.8.0;
contract Test1865IV {
    uint16[6] x;
    function set(uint16 number) public {
        x[2] = number;
    }
    function get() public view returns (uint16) {
        return x[2];
    }
    constructor() {
        x[2] = 3;
    }
    function set2(uint16 number) public {
        x[2] = number;
    }
    function get2() public view returns (uint16) {
        return x[2];
    }
    function set3(uint16[3] memory memory30) public {
        x[2] = memory30[1];
    }
    function get3() public view returns (uint16) {
        return x[2];
    }
    function set4(uint16[] memory array31) public {
        x[2] = array31[1];
    }
    function get4() public view returns (uint16) {
        return x[2];
    }
}
