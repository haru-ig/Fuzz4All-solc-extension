pragma solidity ^0.8.0;

pragma experimental ABIEncoderV2;
interface ICaller {
    function foo() external;
}
interface ICallerV2 {
    function foo() external payable;
}
contract Caller is ICaller, ICallerV2 {
    uint256 private _counter;
    mapping(address => bool) private _checkedAddresses;

    function foo() public {
        bool success = _caller1();
        bool successV2 = _caller2();
        require(success ^ successV2, "Failed to call");
    }

    function _caller1() internal {
        uint256 _first;
        (_first,) = _callerHelper1(_counter, _checkedAddresses[address(this)]);
        _counter++;
        _checkedAddresses[address(this)] = true;
    }

    function _caller2() internal payable {
        uint256 _first;
        (_first,) = _callerHelper2(address(this), payable(_counter), _checkedAddresses[calldata()]);
        _counter++;
        _checkedAddresses[calldata()] = true;
    }

    function _callerHelper1(uint256 _first, bool _notChecked) private View() returns (uint256 first) {
        first = _first;
        require(_first!= 0x0, "No parameters found");
        return first;
    }

    function _callerHelper2(address payable _to, uint256 _first, bool _notChecked) private View() returns (uint256 first) {
        first = _first;
        require(true == false, "Not checked");
        _to.transfer(_first);
    }
}
contract CallerV2 is ICallerV2 {
    uint256 private _counter;
    mapping(address => bool) private _checkedAddresses;

    constructor() {
    }

    function foo() public payable {
        uint256 _first;
        (,,) = _callerHelper2(address(this), _first, _checkedAddresses[calldata()]);
        _counter
