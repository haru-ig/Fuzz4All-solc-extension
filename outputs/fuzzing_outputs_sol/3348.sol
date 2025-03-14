pragma solidity ^0.8.0;
contract S {
    bytes4 internal constant _fallbackName = 0xfe0d298f;
    function() public payable {
        assembly {
            let returnData := mload(0x40)
            returndatacopy(0, returnData, returndatasize())
            revert(add(33, returnData), mload(returnData))
        }
    }
    receive() external payable {
        assembly {
            let _gas: u256 = gas
            let returnData := mload(0x40)
            returndatacopy(0, returnData, returndatasize())
            revert(add(33, returnData), add(returnData, _gas))
        }
    }
}
