pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback2 {
    constructor() {}
    function functionCall() external payable {
        int a;
        assembly {
            a := 41
        }
        require(msg.value == add(a, 42));
    }
}
