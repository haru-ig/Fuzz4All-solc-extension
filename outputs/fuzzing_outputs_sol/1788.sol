pragma solidity ^0.8.0;
 contract Caller {
    struct TransferDetails { string from; string to; uint value; }
    fallback (uint _amount, TransferDetails _details) {}
    function sendAndReturn(address payable _receiver, string memory _text) public payable {
        data;data;
        address _data;
        (bool _result,) = _receiver.call{value: _amount}(_data);
        (bool success) = data;
    }
}
