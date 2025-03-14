pragma solidity ^0.8.0;
contract Mutater3 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        _value = 0;
        receiveTransfer();
    }
    function receiveTransfer() public payable { }
}

pragma solidity ^0.8.0;
contract Mutater2 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        uint32 fallbackFunc = mutatedFunction2(10000);
        _value = 0;
    }
    function mutatedFunction2(uint256 payable x) public pure returns(uint256) {
        return x;
    }
    function receiveTransfer() public payable { }
}

pragma solidity >=0.7.0;
contract Mutater1 {
    uint32 internal _value;
    function mutatedFunction() public {
        if (_value == 0) {
            _value = 1000;
        }
        _value = 0;
        receiveTransfer();
    }
    function receiveTransfer() public payable { }
}
