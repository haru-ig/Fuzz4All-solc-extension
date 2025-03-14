pragma solidity ^0.8.0;
contract Mod4 {
    uint a;
    uint x;
    function update(uint y) private {
        require(y >= 0);
        a = uint(y);
        x = uint(y);
    }
    function get(uint z) private returns(uint) {
        require(uint(z) == a);
        return a;
    }
    function f2() public {
        a++;
        update(x);
        get(z);
    }
}
contract Main {
    Mod4 c;
    Mod2 c2;
    function f() public {
        c.f1();
        c2.f1();
    }
}
