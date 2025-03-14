pragma solidity ^0.8.0;
contract contractWithFallback {
    fallback() public pure {}
}
contract mutatedCallReceiver {
    receive() external payable {}
    receive() public pure {}
    receive() external pure {}
    fallback() public pure {}
    fallback() public pure {}
    fallback() public pure {}
    fallback() public pure {}
}
contract WithFallback {
    fallback() public pure {}
}
