pragma solidity ^0.8.0;
contract Test34723 {
    function set34723(uint value) public {
        uint16[10][] y;
        y[0] = _get10(value);
    }
    function get34723() public view returns (uint16[10][] memory) {
        uint16[10][] memory a_get;
        uint16 value = getValue(a_get[0]);
        a_get[0] = _get10(value);
        return a_get;
    }
    function _get10(uint value) private pure returns (uint16[10][] memory y1) {


        y1 = new uint16[10][] (1);
        y1[0] = value;
        return y1;
    }
    function setValue(uint16 value) private pure returns (uint16) {
        uint16 s = 0;
        uint[5] memory a;
        a.length = 5;
        a[0] = value;
        s = 10;
        return s;
    }
    function getValue(uint16[10] memory x) private pure returns (uint16) {
        uint16 s;
        uint[5] memory a;
        a.length = 5;
        a = x;
        s = x[0];
        return s;
    }
}
contract Test36036 {
    function _get10(uint value) private pure returns (uint16[] memory y1) {


        y1 = new uint16[](1);
        y1[0] = value;
        return y1;
    }
    function getValue(uint16[10] memory x) private pure returns (uint16[] memory) {
        uint16[] memory a_get;
        uint16[] memory a;
        a.length
