pragma solidity ^0.8.0;
interface IReceiverWithFallback {
    function receiveMessage(uint256 _value) external payable returns (uint256);
}


pragma solidity ^0.8.0;
contract ReceiverWithFallback {
    uint256 public etherBalance;
    address payable public fallbackAddress;

    constructor(address payable _fallback) {
        fallbackAddress = _fallback;
    }

    receive() external payable {
        etherBalance += msg.value;
        fallbackAddress.transfer(msg.value);
    }
}
