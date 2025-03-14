pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    uint _someNumber;
    function () external payable {}
    fallback () public payable {
        _someNumber += 1;
    }
}
