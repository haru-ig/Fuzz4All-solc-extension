pragma solidity ^0.8.0;
contract C {
    uint[100] x;
    uint[100] y;
    uint[3] zz;
    mapping (uint => uint) s;
    constructor() public {
        s.set(0, 23);
        s.set(1, 1);
        x.push(1);
        x.push(2);
    }
    function a() public returns (uint[] memory, uint[2] memory) {
        uint[] memory result = new uint[](3);
        result[0] = uint(s.get(0));
        result[1] = uint(s.get(1));
        result[2] = uint(s.get(2));
        uint[2] memory result2 = new uint[](2);
        result2[0] = result[0];
        result2[1] = result[1];
        return (result, result2);
    }
    function b() public {
        zz[0] = 12;
        x.push(3);
        x.push(4);
        (uint[] memory, uint[2] memory) memory result = a();
        x.push(5);
        zz[0] = 13;
        x.push(6);
        uint[3] memory result2 = new uint[](3);
        result2[0] = result[0];
        result2[1] = uint(result[1]);
        zzzz.push(25);
        zz.push(54);
        x.push(7);
        yy[0] = 8;
        x.push(8);
        zz.push(14);
        uint[3] memory result3 = new uint[](3);
        result3[0] = uint(zz[2]);
        result3[1] = uint(zz[1]);
        result3[2] = uint(zz[0]);
        x.push(9);
    }
}
