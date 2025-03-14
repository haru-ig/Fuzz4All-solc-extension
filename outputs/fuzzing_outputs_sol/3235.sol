pragma solidity ^0.8.0;
contract LowLevelFallbackForReceiverMutated {
    function smallMutate() public view {
        return lowLevelFallbackForReceiver(20);
    }
    function largeMutate() public view {
        return lowLevelFallbackForReceiver(14 * 10**15);
    }
}
