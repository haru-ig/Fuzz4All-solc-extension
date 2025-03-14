pragma solidity ^0.8.0;
contract NoMod {
    uint a;
    function update(uint x) public {
        a = x;
    }
    function get() public view returns(uint) {
        return a;
    }
}
contract Foo is Mod {
    uint private _a;
    function update(uint x) public {
        _a += 1;
    }
    function updateAndReturn(uint x) public returns(uint) {
        _a += 1;
        return _a;
    }
    function get() public view returns(uint) {
        return _a;
    }
}
contract Test {
    function test(uint x, uint y) public {
        Mod mod;
        NoMod no;
        mod.update(x);
        no.update(x);
        Mod mod2;
        NoMod no2;
        NoMod no3;
        mod2.update(y);
        no2.update(y);
        mod2.updateAndReturn(x);
        no2.updateAndReturn(x);
        Mod mod3;
        mod3.update(x);
        no3.update(x);
        no3.updateAndReturn(x);
    }
}
