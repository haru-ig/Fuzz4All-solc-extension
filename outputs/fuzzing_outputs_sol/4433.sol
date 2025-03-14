pragma solidity ^0.8.0;
import "hardhat-assert.sol";
import "hardhat-logger.sol";

contract Caller {
    function callContractViaFallback(
        bytes5 contractType,
        address payable contractAddress,
        bytes memory customData) public {
        assert(customData.length == 0,'should be empty');
        (bool isFallback, bytes memory data) = abi.decode(contractAddress.call{value:0x0}(), (bool, bytes));

        assertTrue(data.length == 0,'should be empty');
        Logger.assertEventEmitted(contractType, 0x0, 'Fallback called for all messages');
    }
    function callContractViaFallbackWithInvalidData(
        bytes5 contractType,
        address payable contractAddress,
        bytes memory customData) public {
        assert(customData.length == 0,'should be empty');
        (bool isFallback, bytes memory data) = abi.decode(contractAddress.call{value:0x0}(), (bool, bytes));

        assertTrue(data.length == 0, 'customData should be empty');
        Logger.assertEventEmitted(contractType, 0x0, 'Fallback called for all messages');
    }
}
