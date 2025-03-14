pragma solidity ^0.8.0;
contract FallbackReceiver {
    fallback() external {
        uint16 numberOfFailedTrytes = 10000;
        address payable contractToFallbackTo = address(this);
        FallbackReceivable(contractToFallbackTo).fallback();
    }
}
