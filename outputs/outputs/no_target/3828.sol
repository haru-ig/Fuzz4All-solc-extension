pragma solidity ^0.8.0;
contract R5 {
        uint a;
        uint b;
    constructor(uint _x) public {
        a = _x;
        b = _x;
    }
    function swap() public {
        b = a;
        a = b;
        b = a;
        b = a*a*a - b;
    }
    function get() public view returns (uint) {
        return a;
    }
}
contract RevertedTest { function test() public {
        R1 r1 = R1(0x10101010);
        r1.swap();
    }}
contract RevertedTest2 { function test() public {
        R2 r2 = R2(0x100000000);
        r2.swap();
    }}
contract RevertedTest3 { function test() public {
        R3 r3 = R3(0x10000000000000000000000000000000000000000);
        r3.swap();
    }}
contract RevertedTest4 { function test() public {
        R4 r4 = R4(0x100000000000000000000000000000000000000000000);
        r4.swap();
    }}
contract RevertedTest5 { function test() public {
        R5 r5 = R5(0x10000000000000000000000000000000000000000);
        r5.swap();
    }}
