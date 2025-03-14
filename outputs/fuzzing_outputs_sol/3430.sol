pragma solidity ^0.8.0;
contract Caller is BogusCaller {
    uint public immutable a;
    constructor(uint _a) public {
        a = _a;
    }
    receive() external payable {
        emit ReceivedEth(msg.value);
    }
    event RecipientMessage(uint eth);
    function sendMessageToRecipient() public payable {
        emit RecipientMessage(msg.value);
        a /= msg.value;
    }
}
contract MutatedCaller is Caller {
    constructor(uint _a) public Caller(_a) {}
}

pragma solidity ^0.8.0;
contract MessageCall {
    bytes32 constant MYMESSAGE = keccak256("MyMessage");
    (uint _targetedEarningsRate, uint _value) public;

    function send(address _target, uint _number, uint _toEther) public {
        (uint _value, uint _rate) = targetedCall(address(this), _target, _number, 0, _toEther);
    }
    function targetedCall(address _targetAddr, address _target, uint _number, uint _value, uint _toEther) internal view returns (uint _valueAfter, uint _targetEarningsRateAfter) {
        (uint _targetEarningsRateBefore, bool _success) = (equivalentCall(_targetAddr, _target, _number, _value, _toEther), true);
        if (_success) {
            _targetEarningsRateAfter = rate(_targetAddr, _target, _number);
        }
        (uint _valueAfter, ) = equivalentCall(address(this), address(this), _number, _value, _toEther, true);
        return (_valueAfter, (uint)_targetEarningsRateBefore / _targetEarningsRateAfter);
    }
    function equivalentCall(address _targetAddr, address _target, uint _number, uint _value, uint _toEther, bool _result) internal view returns (uint _equivalentCall, uint _targetEarningsRate) {
        uint _numberCopy = _number;
        uint _valueCopy = _value;
        _targetEarningsRate = targetEarningsRate(_targetAddr, _target);
        while (true) {
            uint _callResult = callResult(address(this), address(_target), _numberCopy, _valueCopy, _toEther);
            if (_callResult == _numberCopy) {
                break;
            }
            if (_callResult == 0) {

                _equivalentCall = _number;
                assembly {
                    let result := mload(0x40)
                    mstore(0x40, _address)
                }
            }
            else {

                _numberCopy -= _callResult;
                _valueCopy += uint8(getReturnCode(_callResult));
                _equivalentCall =
