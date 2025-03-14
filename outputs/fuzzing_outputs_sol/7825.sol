pragma solidity ^0.8.0;
contract Caller {
    function callFunction(address contractAddress, bytes memory data) external payable {
            address target;
            assembly {
                    target := mload(0xb5732d565b8f04000)
            }
            (bool success, bytes memory returnData) = contractAddress.call{value: msg.value}(data);
            assert(success);
            assert(returnData.length == 0);
    }
}
