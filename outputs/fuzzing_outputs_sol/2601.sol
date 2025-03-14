pragma solidity ^0.8.0;
contract semanticEquivalenceTest {
    bytes4 constant _F = 0xf7730cc0;
    fallback payable public fallbackFunction;
    constructor() public {
        fallbackFunction = payable(new mutatedFallback());
    }
    receive() external payable {
        require(msg.value == 0, "fallback received too much");
        _switchToFallback();
    }
    function _switchToFallback() private view {
        require(msg.sender == address(fallbackFunction), "Caller must be fallback");
        fallbackFunction = payable(address(this));
    }
    function testFallback() public {
        callNonFallback();
    }
    function callNonFallback() public {
        fallbackFunction.call{value : 2 ()}("");
    }
}
