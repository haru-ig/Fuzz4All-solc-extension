pragma solidity ^0.8.0;
contract Test34Mutated {
    int _i;
    uint x;
    modifier mod1 { uint _i = _i +1; _; }
    modifier mod2 { uint _i = _i-1; _; }
    modifier mod3 { uint _i = x/x; _; }
    modifier mod4 { x = x<<1; _; }
    modifier mod5 { uint _i = x%x; _; }
    modifier mod6 { x = x/x; _; }
    function mod1() public mod2 { }
    function mod2() public mod1 { }
    function mod3() public mod1 { }
    function mod4() public mod1 { }
    function mod5() public mod1 { }
    function mod6() public mod1 { }
    function test() public nonpayable returns (bool _i) { return 0 <= _i; }
}
