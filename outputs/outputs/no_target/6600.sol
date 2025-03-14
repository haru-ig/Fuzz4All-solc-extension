pragma solidity ^0.8.0;
contract modifierWithParamWithG {
    function g() public view returns (uint) {
        return (7 * 4) / (3 * 2) * f();
    }
    function f() public view returns (uint) {
        return g();
    }
}
