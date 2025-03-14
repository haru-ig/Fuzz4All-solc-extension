pragma solidity ^0.8.0;
contract CallWithLowLevelFallback {
    address private constant lowLevelContract = address(0xB1B2B3B4B5B6B7B8D8D8D8D8D8);

    fallback() external payable {
        lowLevelContract.call{value: msg.value}("");
    }
}
