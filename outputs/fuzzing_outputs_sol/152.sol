pragma solidity ^0.8.0;
contract CallFallbackFunctionThree {
    fallback () external {}
    receive () external {}
}
contract CallFallbackFunction {
    uint256 public constant NUMBER_OF_FALLBACK_FUNCTIONS = 3;

    function () public pure {
        uint256 number = 1;


    }

    receive () payable external {}
    receive () external {
    }

    fallback () public {
        uint256 number = 2;


    }
}
