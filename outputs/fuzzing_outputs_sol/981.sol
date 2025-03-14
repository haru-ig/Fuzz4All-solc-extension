pragma solidity ^0.8.0;
contract ReceiveWithFallbackNonMutated {
    receive() external {}
}

contract Caller {
    address contractAddress;


    function callContractWithFallback() external payable {
        bytes memory callData = abi.encodeWithSignature("fallback()");
        (bool success, bytes memory returnData) = contractAddress.call{
            value: msg.value
        }(callData);

        require(success);
    }


    function callContractWithFallbackMutated(address _contractAddress) public returns (bool) {
        bytes memory callData = abi.encodeWithSignature("fallback()");
        (bool success, bytes memory returnData) = _contractAddress.call{
            value: msg.value
        }(callData);

        require(success);
        return true;
    }

    function setContractAddress(address _contractAddress) external {
        contractAddress = _contractAddress;
    }
}
