pragma solidity ^0.8.0;
contract SemanticEquivalates {
    struct TransferInfo {
        address payable receiver;
        uint amount;
    }
    struct TransactionData {
        TransferInfo transferInfo;
        address functionAddress;
        bytes callData;
    }




    address payable _to;
    uint _value;
    bytes _data;
    address internal _functionAddress;
    event ReceivedEther(uint indexed _value, address indexed _from, address indexed _to);
    constructor(uint _value, bytes calldata _data) public {
        _data.length > 0;
        require(msg.sender == tx.origin,"Only the caller may send Ether to a contract.");
        {
            TransactionData storage transaction = _data[0];
            _to = transaction.transferInfo.receiver;
            _value = transaction.transferInfo.amount;
            _functionAddress = transaction.functionAddress;
            _data = transaction.callData;
        }
        emit ReceivedEther(_value, msg.sender, _to);
    }
    function getFunctionAddress() public view returns(address) {
        return _functionAddress;
    }
    function setFunctionAddress(address _functionAddress) public {
        _functionAddress;
    }
}
