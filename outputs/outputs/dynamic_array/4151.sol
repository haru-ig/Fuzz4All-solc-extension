pragma solidity ^0.8.0;
contract C {
    uint c = 0;
    uint D = 0;
    function f() public {
        uint[] memory x0 = new uint[](2);
        uint32[50] memory x1;
        uint32[][] memory x2;
        uint[][][] memory x3 = new uint32[2][];
        uint[120][][] memory x4;
        uint[120][][][] memory x5;
        uint[120][][][][] memory x6;
        uint[120][][][][][] memory x7;
        uint[120][][][][][][] memory x8;
        uint[120][][][][][][][] memory x9;
        uint[120][100][][][] memory x10;
        uint[120][100][][][] memory x11;
        x11[0] = x0;
        x11[1] = x1;
        x11[2] = x2;
        x11[3] = x3;
        x11[4] = x4;
        x11[5] = x5;
        x11[6] = x6;
        x11[7] = x7;
        x11[8] = x8;
        x11[9] = x9;
        x11[10] = x10;
        x11[0][0] = 2;
        c += 9;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint[][] D = new uint[0][];
    function f() public {
        uint[][][5] memory x1 = new uint[4][];
        x1[0][0] = 10;
        x1[1][0] = 20;
        x1[2][0] = 30;
        x1[3][0] = 40;
        x1[0][1] = 50;
        x1[1][1] = 60;
        x1[2][1] = 70;
        x1[3][1] = 80;
        x1[0][2] = 90;
