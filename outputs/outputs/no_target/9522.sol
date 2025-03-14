pragma solidity ^0.8.0;
contract Class70 is Interface15 {
    event newEvent(address _recipient, uint _value);
}


contract RevertOverload13 is Class70 {
contract Call1 {
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target) external onlyTarget {
_targetWithNoOp.call.value(0)((address(this)).balance);
}
}
}
contract Call2 is Class70 {
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target) public onlyTarget {
_targetWithNoOp.call.value(0)((address(this)).balance);
}
}
contract Call3 is Class70 {
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target) external onlyTarget {
_targetWithNoOp.call.value(0)((address(this)).balance);
}
}
contract Call4 is Class70 {
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target) internal onlyTarget {
_target.call.value(0)((address(this)).balance);
}
}
contract Call5 is Class70 {
struct InternalStruct1 {
address internal _target;
uint internal _callWithNoOp;
}
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target) public view onlyTarget
{
InternalStruct1 memory _temp = {0, _targetWithNoOp.call.value(0)((address(this)).balance)};
_temp._target = _target;
_temp._callWithNoOp = 1;
_target.call.value(0)(_temp._target);
}
}
contract Call6 is Class70 {
struct InternalStruct1 {
address internal _target;
}
struct InternalStruct2 {
address internal _target;
address internal _other;
}
function MyInternalFunction1(address _targetWithNoOp) internal {}
function MyInternalFunction2(address _target, address _other) public onlyTarget
{
address memory _temp = address(0);
InternalStruct1 memory _tempToAddress1 = {0};
InternalStruct2 memory _tempToAddress2 = {0};
_tempToAddress1._target = _target;
_tempToAddress2._target = _target;
_
