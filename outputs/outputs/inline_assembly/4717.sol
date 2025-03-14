pragma solidity ^0.8.0;
contract my87{
    uint256 _g;
    constructor(uint256 g) internal {
        _g = g;
    }
    uint256 get_g_0(uint256 i) view internal returns (uint256) {
        return _g;
    }
    uint256 get_g_1(uint256 i) internal {
        return _g;
    }
    uint256 get_g_2(uint256 i) external {
        return _g;
    }
    uint256 get_g_3(uint256 i) public {
        return _g;
    }
    uint256 get_g_4(uint256 i) view {
        return _g;
    }
    uint256 get_g_5(uint256 i) {
        return _g;
    }
}
function test_function() public {
        my87 m;
        uint256 a = 1;
        uint256 b = 1;
        m.set_g_0(a,b);
        uint256 c = m.get_g_0(c);
        uint256 d = m.get_g_1();
        uint256 e = m.get_g_2();
        uint256 f = m.get_g_3();
        uint256 g = m.get_g_4();
        uint256 h = m.get_g_5(h);
    }
/*

In the above code - you see that I can declare a variable at the scope of its declaration. This also demonstrates that inline assembly operates at a very low level. In the above code, `a` is declared outside of the `set_g_0` and `get_g_0` functions, and in the `get_g_0`, `c` is also declared in the same scope as `a`. Consequently, both `a`, and `b` are effectively declared in the same scope. Inline assembly works by taking a copy of their memory, and then modifying that copy without actually modifying the original memory (i.e. the memory is "volatile"). In the rest of the contract, `c` is only accessed through `get_g_0`, and `f`, `h`, `g`, and `d` are accessed through `get_g_0`, `get_g_1`, `get_g_2`, `get_g_3`, and `get_g_4`. Thus, in the end, `e`, `f`, `g`, `h`, and `d` are all the same (because memory access is "atomic").

At
