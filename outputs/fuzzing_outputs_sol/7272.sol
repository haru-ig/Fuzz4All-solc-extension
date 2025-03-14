pragma solidity ^0.8.0;
contract CodeWithFallback1 {
    address public fallbackfunc;
    constructor(address _fallback) {
        fallbackfunc = _fallback;
    }
    function fct1() public {
    }
    function fct0() public pure {
        fallbackfunc.fct1();
    }
}
