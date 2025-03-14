pragma solidity ^0.8.0;
contract MutatedCaller {
    address fallbackAddress;

    modifier onlyFallback {
        require(msg.value == 0);

        fallbackAddress = PayableDetector.detectPayable();
        if(payable(fallbackAddress).isFallback())
        revert("Only fallback should be called when fallback is payable");
        _;
    }

    function getFallbackAddress() public returns(address) {
        return fallbackAddress;
    }
}

pragma solidity ^0.8.0;
address PayableDetector;
contract PayableDetector {
    function detectPayable() public view returns(address payable) {
        return payable(fallbackAddress());
    }
}
