pragma solidity ^0.8.0;
contract SemanticalEquiv114 {
    uint public _a = 1;
    uint public _b;
    uint public _c;
    uint public _d;
    uint public _e;
    uint public _f;
    uint public _g;
    uint public _h;
    uint public _i;
    uint public _j;

    function g() public view returns (uint){
        return _a - _b - _c - _d + _e + _f + _g + _h - _i - _j;
    }
}
