pragma solidity ^0.8.0;
contract Modul
{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function solve() public pure returns (uint) {
        uint r;
        uint i;
        uint x;
        for (x > test2; x < test3){
        }
        assert(x <= test3);
        r = test;
        return 1;
    }
}


pragma solidity ^0.8.0;
contract Modul
{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function test() public pure returns (uint) {
        uint r1;
        uint r2;
        uint32 i1;
        uint32 i2;
        uint32 j1;
        uint32 j2;
        uint test2_2_1 = 1013;
        uint test3_1;
        uint test2_1;
        assembly{
            r2 := 2;
            for(j2:=test2_2_1;j2<test3_1;j2++){
                test2_1:=i1;
                test3_1:=j1;
                test2_2_1:=j2+3;
            }
            r1:=test;
            r2:=2;
        }
    }
}


pragma solidity ^0.8.0;
contract Modul
{
    uint constant test2 = 1347;
    uint constant test3 = 100;
    uint constant test = 1000;
    function test() public pure {
        uint test_1;
        uint test_2;
        test_2 = test2 + test;
        test_2 ++;
        test_2 += test2;
        test_2 /= 3;
    }
}
