pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback3WithBigContract {
    constructor() payable {}
    fallback () external {
        CallFallbackFunctionTwoPlusFallback3 bigContract = PayableFallback();
        bigContract.doSomethingReturningBig();
    }
    function PayableFallback() internal payable {}
    function doSomethingReturningBig() internal pure returns(uint) {
        return 49;
    }
}





pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback4 {
    constructor() payable {}
    fallback () external {

        require(block.timestamp > 0, "Block timestamp must be positive.");
        revert();
    }
}
