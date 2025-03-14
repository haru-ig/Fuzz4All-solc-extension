pragma solidity ^0.8.0;
contract Test33790 {
    uint16[3][] x;
    uint16 a = 0x2;
    function set(uint16[3] memory y_get) public {
        x[0] = y_get;
        a = x[0][0];
    }
    function get0(uint16 _0) public view returns (uint16[3] memory) {
        uint16[3] memory a_get;
        a_get[0] = x[0];
        return a_get;
    }
    function get1(uint16 _0, uint16 _1) public view returns (uint16[3] memory) {
        uint16[3] memory a_get;
        a_get[0] = x[0];
        return a_get;
    }
    function get2(uint16 _0, uint16 _1, uint16 _2) public view returns (uint16[3] memory) {
        uint16[3] memory a_get;
        a_get[0] = x[0];
        return a_get;
    }
}
