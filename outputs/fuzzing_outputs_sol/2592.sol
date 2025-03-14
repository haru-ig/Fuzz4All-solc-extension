pragma solidity ^0.8.0;
contract FallbackFunctionMutated {
    function f() public {

        fallbackValue = 1;
        key = "bar";
    }
}
