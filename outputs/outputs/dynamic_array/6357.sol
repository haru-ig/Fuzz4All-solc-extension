pragma solidity ^0.8.0;
library lib {
    uint8 [17] s1;
    uint8 [17] s2;
    function f() public { s1[1] = 1; s1[16] = 1; s2[1] = 1; s2[16] = 1; }
}

pragma solidity ^0.8.0;
contract Test {
    uint8 [17,16] s1;
    uint8 [17,16] s2;
    uint8 [16,17] s3;
    uint8 s4;

    function contract2() public {
        s1[10, 9] = 4;
        s1[11, 10] = 5;
        s2[10, 18] = 6;
        s2[19,18] = 6;
        uint8 [3, 12] s3b = s3;
        uint8 [3, 12] s3 = s3b;
    }
    function contract1() public {
        lib.f.f();
        uint8 [3, 12] s3c = lib.s3;
        uint8 [3, 12] s3d = lib.s3b;
        s3c[2] = 2;
        s3[1, 3] = 3;
        s3b[1, 3] = 3;
        s3d[1, 3] = 3;
    }

   function test1() public {
       c c;
       c.f();

       uint32 [4,6] s4a = uint8 (c.s4);
       uint32 [4,6] s4b = uint8(c.s1);
       uint32 [4,6] s4c = uint8 (c.s2);
}

}
