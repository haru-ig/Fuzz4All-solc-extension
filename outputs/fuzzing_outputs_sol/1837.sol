pragma solidity ^0.8.0;
contract TransferViaFallback {

    struct CallData {
        uint value;
        uint gasPrice;
        bytes memory data;
        address contractAddress;
    }
    fallback function receive(uint _value, uint _gasPrice, bytes memory _data) public payable {
        emit Transfer(_value, _gasPrice, address(this), _data);
        callCallData(_value, _gasPrice, address(this), _data);
    }
    fallback function () public payable {
        emit ReceivedEther();
    }
    function emitTransfer(uint _value, uint _gasPrice, address _contractAddress) private {
        Transfer(_value, _gasPrice, _contractAddress, "");
    }
    function callCallData(uint _value, uint _gasPrice, address _contractAddress, bytes memory _data) private {
        CallData memory callData = CallData(_value, _gasPrice, _data, _contractAddress);
        (bool success, ) = _contractAddress.call(abi.encodeWithSignature("receive(uint256,uint256,bytes)", _value, _gasPrice, _data));
        assert(success);
    }
}
