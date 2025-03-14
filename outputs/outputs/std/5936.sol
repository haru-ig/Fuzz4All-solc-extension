pragma solidity ^0.8.0;
contract SemanticEvidentChanges13 {
    bytes32 a;
    bytes32 b;
    bytes2 c;
    bytes32 d;
    function setA() public {
        a = 0x9104728575A26FD573c2e79448A4FBC9085CBf51;
    }
    function setB() public {
        b = 0xFB864E5559C91A2475E33843E85EB6A08E197A95;
    }
    function setDC() public {
        d = bytes2(2);
    }
    function setBC() public {
        b = bytes2(3);
    }
    function setDA() public {
        d = bytes2(4);
    }
    function getA() public view returns (bytes32) {
        return (a);
    }
    function getB() public view returns (bytes32) {
        return (b);
    }
    function getD() public view returns (bytes2) {
        return (d);
    }
}
contract SemanticEvidentChanges14 {
    uint8 s0;
    mapping(uint => address) public map0;
    function setS(uint _s0) public {
        s0 = _s0;
    }
    function getS() public view returns (uint) {
        return s0;
    }
    function setM(uint _s0, uint _s1) public {
        map0[_s0] = add;
    }
    function getM() public view returns (uint, address) {
        return (s0, map0[_s0]);
    }
}
