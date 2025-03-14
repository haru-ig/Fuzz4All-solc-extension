pragma solidity ^0.8.0;
contract CallFallbackFunctionFourPlusFallback5 {
    uint public count;
    uint storage x1;
    uint internal x2;
    constructor() {
        x1 = 1;
        x2 = 2;
        x2 = 3;
        count = 10;
    }
    function payme() external payable {
        if (msg.value == 1) {
            uint a = x1 + x2;
        } else {
           string memory s = "Hello";
        }
    }
}
