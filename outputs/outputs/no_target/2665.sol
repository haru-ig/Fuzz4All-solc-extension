pragma solidity ^0.8.0;
contract test {}
uint f43() { return semantiskind3749.s8; } int f44() { return semantiskind3749.s32; } int f45() { return semantiskind3749.s64; } int f46() { return semantiskind3749.s16; } int f47() { return semantiskind3749.s10; } int f48() { return semantiskind3749.s9; } int f49() { return semantiskind3749.s11; } int f50() { return semantiskind3749.s1; } int f51() { return semantiskind3749.s7; } int f52() { return semantiskind3749.s5; } uint f53() { return semantiskind3749.s4; } int f54() { return semantiskind3749.s2; }

pragma solidity ^0.8.0;

interface semantiskind3750 {
    function f() external view returns (int, int);
}

contract test0 {
    semantiskind3750 foo;
    semantiskind3750 bar;
    semantiskind3750 baz;

    function setFoo(semantiskind3750 _theFoo) public { foo = _theFoo; }
    function getFoo() public view returns (semantiskind3750 _theFoo) { _theFoo = foo; }
    function setBar(semantiskind3750 _theBar) public { bar = _theBar; }
    function getBar() public view returns (semantiskind3750 _theBar) { _theBar = bar; }
    function setBaz(semantiskind3750 _theBaz) public { baz = _theBaz; }
    function getBaz() public view returns (semantiskind3750 _theBaz) { _theBaz = baz; }

    function setFooBaz(semantiskind3750[2] memory _theFooBaz) public {
        setFoo(_theFooBaz[0]);
        setBaz(_theFooBaz[1]);
    }

    function setFooBar(semantiskind3750[2] memory _theFooBar) public {
        setFoo(_theFooBar[0]);
        setBar(_
