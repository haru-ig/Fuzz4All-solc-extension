pragma solidity ^0.8.0;
contract S {
    uint constant callBackAddress = 0xD8812C8e1a91E93B5E02CC60673B18C63820804f;
    uint constant callBackData = 123;
    function callBack() public payable {
        selfdestruct(callBackAddress);
    }
    function receiveData() public pure {
        emit DataWritten(msg.data, msg.sender, msg.sig);
    }
    event DataWritten(bytes _data, address _caller, bytes4 _sig);
}
