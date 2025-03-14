pragma solidity ^0.8.0;
contract Mutater5 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        receiveTransfer();
        _value = 0;
    }
    function receiveTransfer() public receive() payable {}
}


pragma solidity ^0.8.0;
contract Mutater6 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        receiveTransfer();
        _value = 0;
    }
    function receiveTransfer() public payable { }
}
