pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3 {
    function sendWithFallback() public payable {

        fallback();
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionBigPlusFallback2 {
    constructor() {
        address payable selfDestructAddress1 = payable(address(0x00));
        address payable selfDestructAddress2 = payable(address(0x00));
        selfdestruct(selfDestructAddress1);
        selfdestruct(selfDestructAddress2);
    }
    receive() external payable {}
}
