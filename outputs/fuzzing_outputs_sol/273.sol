pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    uint public x;

    function () public payable {
        x = 2;
    }

    fallback () public payable {
        x++;
    }
}
