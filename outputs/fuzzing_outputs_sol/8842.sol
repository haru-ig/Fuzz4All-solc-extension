pragma solidity ^0.8.0;





pragma solidity ^0.8.0;
contract FallbackTest is LowLevelCaller {
    bytes32 public stateRoot;
    constructor(bytes32 _initialState) {
        stateRoot = _initialState;
    }
    function callLowLevelCallerWithFallback() external returns (bytes32) {
        uint balance = msg.value;
        uint expectedBalanceInEighteen = balance + 1 * 10**15;
        require(balance >= expectedBalanceInEighteen, "Not enough Ether to cover the required gas");
        if (msg.data.length!= 0) {
            require(keccak256(abi.encode(msg.data)) == keccak256(abi.encodePacked(stateRoot, msg.sender)), "Invalid stateRoot");
        } else {
            stateRoot = getStateRootAfter();
        }
        emit(BalanceUpdated(stateRoot));
    }
}
