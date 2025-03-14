pragma solidity ^0.8.0;
contruct CallFallbackFunctionTwoPlusFallback() {
    constructor() payable {}
    fallback () public payable {}
}



pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallbackWithOneReceive {
    constructor() {
        CallFallbackFunctionTwoPlusFallback3 storage C = CallFallbackFunctionTwoPlusFallback3(msg.sender);
        uint256 a = msg.value;
        C.setValue(a);
    }

    receive() external payable {}
}



pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusReceive {
    constructor() payable {}
    receive() external payable {}
}
