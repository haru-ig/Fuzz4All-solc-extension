pragma solidity ^0.8.0;
contract ReturnFallbackFunction {
    function f() public pure {
        return function () pure {   }();   return;
    }
    function g() public pure {
        return f();
    }
}
