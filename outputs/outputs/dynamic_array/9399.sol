pragma solidity ^0.8.0;
contract Arrays3 {
    bytes public b1;
    mapping[uint32][] b2;
    function check() public {
        b2[1][10][1] = 1;
        require(b1.length == 2, "check2");
        require(b1[1] == 0x11, "check3");
    }
    function test0() public {
        require(b1.length == 2, "check1");
        require(b1[1] == 0x11, "check2");
    }
    function test1() public {
        require(b1.length == 2, "check1");
        b2[1][1][1] = 1;
    }
    function test2() public {
        require(b1.length == 2, "check1");
        uint32 x;
        for (uint32 i = 0 ; i < 10 ; i++)
            b2[1][10][i] = 1;
    }
    function test3() public {
        require(b1.length == 2, "check1");
        b1.length = 2;
        require(b1.length == 2, "check2");
    }
    function test4() public {
        require(b1.length == 2, "check1");
        b1 = bytes(0xd0);
        require(b1.length == 2, "check2");
    }
}
