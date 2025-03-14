pragma solidity ^0.8.0;
library TestLib {
    using TestLib for uint;
    struct DynamicDataStruct {
        int[2] field;
    }
    uint a;
    uint b;
    uint[] immutable a1 = [1, 2];
    uint[] immutable a2 = [3, 4];
    uint[] immutable b1 = [5, 6];
    uint[] immutable b2 = [7, 8];

    function test() public {
        a = 3;
        b = a;
        a[0] = 5;
        a[1] = a[0];

        a[0][0] += 6;
        a[1][0] += a[0][0] / 2;
        a[0][0] += 7;
        a[0][1] *= a2[1][1].add(3) + a1[1][1] + a1[1][1];
        b2 = a1;
        b1 = a2;
        a1[0] = a3;
        a2[0] = a4;
        a = a1[1];
    }

    function f1() public view returns(uint256 d1) {}
    function f2() public view returns(uint256[] d2) {}
    function f3() public view returns(uint256[][] d3) {}
    function f4() public view returns(uint256[][][] d4) {}
    function f5() public view returns(uint[][][2] d5) {}
    function f6() public view returns(uint[][][][3] d6) {}
    function f7() public view returns(uint[][][][][4] d7) {}
    function f8() public view returns(uint[][][][5][10] d8) {}
    function f9() public view returns(uint[1][2][3][4][5][6][7][8][9][10] d9) {}
    function f10() public view returns(uint[12][24][16] d10) {}
    function f11() public view returns(int d11) {}
}
