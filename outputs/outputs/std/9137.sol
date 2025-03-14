pragma solidity ^0.8.0;
contract ContractWithArrayFunctions {
    uint256 public _value1;
modifier setOne(uint256 _value1) { _value1 = _value1; _; }
function init(uint256 _value1) public setOne(_value1) {
    emit Changed(_value1);
}
}
abstract contract ImmutableArray {

    address[] public a;
    function addOne() public { a.push(address(this)); }
    function getFirst() public returns (address) { return a[1]; }
}
library ImmutableArrayLibrary {
    function getFirst(
        address[] memory array) public view returns (address) {
        return array[1];
    }
}
contract ArrayContract {
    ImmutableArray public immutables;
    ContractWithArrayFunctions public calls;
    modifier callsThis(address _self) {
        _;
        calls.increment();
    }
    modifier callsThat(address _that) {
        _;
        callsThis(_that);
    }
    function increment() public {
        calls.increment();
    }
    modifier setOne(uint256 _value1) {
        immutables.addOne();
        calls.setOne(_value1);
        _;
    }
    function init(uint256 _value1) public setOne(_value1) { }
    function inc(uint256 _value1) public setOne(_value1) {
        immutables.addOne();
        calls.increment();
    }
    function first() public view
