pragma solidity ^0.8.0;
contract TestMutated729 {
    function test() public returns (uint160) {
        return 0 == uint160(-1);
    }
}

contract TestMutated730 {
    function test() public pure {
        uint x = -1 + _1;
        return test1();
    }
    function test2() public pure {
        uint x = _1;
        return test1();
    }
    function test3() public pure {
        uint x = (_1.toUint() % uint8(0));
        return test1();
    }
    function test4() public pure {
        if (uint160(0) == uint160(0))
            return ;
    }
    function test5() public pure {
        uint x = uint160(-1);
        uint32 a = 0.toUint() >= x;
        uint32 b = 1;
        uint32 c = 1 + uint32(-2 | 0);
    }
    function test6() public pure {
        uint x = 1 << uint160(0);
        uint64 a = 1 & x == 1;
    }
    function test7() public pure {
        uint44 x = uint44(1);
        uint42 x1 = 0 * uint42(9);
        uint223 x2 = uint223(_8 | 0) + x;
        uint32 a = x2 < uint32(-1023);
        uint32 b = x2 << (uint226((uint226()) / uint226() | 0)) == uint226();
        uint32 c = x2 ^ x1 & x2!= (x1 + x1);
        uint32 d = x2 & 0 == x2;
        uint32 e = _1 == x2;
        uint32 f = uint32(-1023) | uint32(-1023);
        uint32 g = uint32(uint32(uint32(uint32(uint32(uint32(uint32(uint32(uint32(uint32(uint32(uint
