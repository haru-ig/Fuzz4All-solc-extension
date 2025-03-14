pragma solidity ^0.8.0;

contract SecondParameterMustBeTypeSpecified2 {
    function f() {
        require(abi.encode(function() external { }));
    }
}








/* If the compiler emits the same code, however, and you still want to use the newer features present in solidity 0.7 + or 0.8 + use version v0.5.3 of our abi cod
