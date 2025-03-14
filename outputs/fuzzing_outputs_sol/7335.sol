pragma solidity ^0.8.0;
import "../Receivers.sol";
contract FallbackContractWithFallback{
    fallback() external payable returns (uint) {
        return i;
    }
    receive() external payable {}
}
