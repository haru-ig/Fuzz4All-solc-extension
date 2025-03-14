pragma solidity ^0.8.0;
import "https://remix.ethereum.org/lib/external/Address.sol";
contract FallbackReceiver {}
contract SendFailure {
    address public fallbackReceiver;
    mapping (address => bool) public hasExecutedFallback;
    function () external payable {
        if (hasExecutedFallback[msg.sender]) {
            throw;
        }
        hasExecutedFallback[msg.sender] = true;
        fallbackReceiver.transfer(msg.value);
    }
}
