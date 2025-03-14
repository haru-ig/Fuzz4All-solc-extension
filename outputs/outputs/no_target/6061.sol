pragma solidity ^0.8.0;
contract Mod {
    uint x;
    function get() public returns(uint) {
        return x;
    }
    function update() public {
        x = x + 1 ;
    }
    function f() public {
            get();
    }
}
contract Mod2 is Mod {
    function get() public view returns(uint) {
        return a;
    }
    function update() public {
        if(a >= 0 && a > 0 && a < 10)
        a = 2 * a + 2;
        a = a / 4;
    }
    function f() public view {
        get();
    }
    function f2() public view {
        get();
    }
}
contract Mod3 is Mod {
    uint constant MAX_DIGITS = 15;
    uint constant SQRT_OF_2 = 11;
    mapping(uint => uint) aMap;
    function get(uint x) public returns (uint y) {



        if (aMap[x] == 0)
        {
            uint t = (x * x) / SQRT_OF_2 + MAX_DIGITS;
            aMap[x] = t;
        }
        return (aMap[x]);
    }
    function update() public {
        uint t = (aMap[x] + aMap[x] - 2 * SQRT_OF_2) / SQRT_OF_4;
        aMap[x] = t;
    }
}
