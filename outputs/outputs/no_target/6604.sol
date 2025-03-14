pragma solidity ^0.8.0;
contract modifierWithParamW {
    function f() public view returns (uint) { return 1; }
    function g() public view returns (uint) { return 2 + (1 + 1) + (2 * (1 + 1)); }
}
contract Modifiers {
    function f() view public {

    }
    function g() view public {

    }
}
contract ModifiersWithParamW {
    function f(uint x) view returns (uint) {
        return x;
    }
    function g(uint y) view public returns (uint) {
        return (y - f(2))* y* f(2);
    }
}
contract ModifiersWithParamWithG {
    function f(uint x) view returns (uint) {
        return x;
    }
    function g() public returns (uint) {
        return (2 + (1 + 1)) * f(1);
    }
}
