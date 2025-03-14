pragma solidity ^0.8.0;
contract Mutated4{
    uint[] public a;
    address payable public b;
    uint public c;
    bytes32 private d;
    constructor(){
        a = new uint[](1);
        c = 1;
        b = payable(address(0));
    }
    function mutated21() public returns (uint){
        return a[0];
    }
    function mutated22() public returns (uint) {
        uint[] memory _a = new uint[](1);
        _a[0] = 1;
        return _a[0];
    }
    function mutated34() public returns (uint){
        uint[] memory _a = new uint[](1);
        _a[0] = c + 1;
        _a[0]--;
        _a[0]--;
        _a[0]--;
        _a[0]--;
        _a[0]--;
        return _a[0];
    }
    function mutated43() public returns (uint) {
        uint[] memory _a = new uint[](1);
        _a[0] = c + 1;
        _a[0]
