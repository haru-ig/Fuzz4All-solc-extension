pragma solidity ^0.8.0;
contract MutantFallbackFunction4{
    event Ether(uint);
    function mutantFallbackFunctionFallback() public pure returns (uint) {
        emit Ether(block.timestamp);
        return 456;
    }
}

pragma solidity ^0.8.0;
contract Caller{
    function doWork() public {
        MutantFallbackFunction3 mutantFunc = MutantFallbackFunction3(0x0);
        (bool sent, bytes memory returndata) = safeTransferEther(0x17, "address", 0, 0, 0, 0);
        assert(sent == true, "Ether transfer failed");
        assert(returndata.length >= 0, "Unexpected return data length: %d", returndata.length);
        (bool success, bytes memory returndata2) = safeTransferEther(0x18, "address", 0, 0, 0, 0);
        assert(success == true, "Ether transfer succeeded");
        assert(returndata2.length >= 0, "Unexpected return data length: %d", returndata2.length);
    }

    function safeTransferEther(address receiver, string memory functionName, uint gas, uint gasPrice, uint value, uint _dataLength) private pure returns (bool sent, bytes memory data) {
        require(msg.value >= value, "Insufficient Ether");
        data = abi.encodeWithSignature(functionName, recvAddr(), gas, gasPrice, 0, value, _dataLength);
        bytes memory sendData = abi.encodeWithSignature("call.value(0)(payable(address,uint256,uint256,uint256,uint256))", receiver, gas, gasPrice, value, 0);
        sent = false;
        address payable recAddr = address(uint160(uint256(receiver)));
        try recAddr.call{value: 0}(sendData) returns (bytes memory) {
            sent = true;
            return;
        } catch (bytes memory returnData) {
            revert(returnData);
        }
    }

    function recvAddr() internal view returns (address) {
        return tx.origin;
    }
}
