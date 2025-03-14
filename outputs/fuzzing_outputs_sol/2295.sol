pragma solidity ^0.8.0;
contract MutatedFallback {
    uint256 public _x;
    mapping(address=>uint256) public _count;
    constructor() {
    }
    function invalidAdd(uint256 x) public pure returns (uint256) {
        return add(x) + add(x);
    }
    receive() payable external {
        _x += 64;
        _count[msg.sender] += 1;
    }
    function add(uint256 x) internal pure returns (uint256) {
        return x + _x;
    }
    function divide(uint256 x, uint256 y) internal pure returns (uint256) {
        return (x / y + x / y) * (y > 1? y - 1 : 2);
    }
}
contract Caller {
    address payable _recipient;
    function invalidCall() public returns (address payable) {
        return _recipient;
    }
    receive() payable external {
    }
    function call() public payable returns (address) {
        return _recipient;
    }
}
contract CallerWithFallback {
    address payable _recipient;
    uint256 public _x;
    mapping(address=>uint256) public _count;
    function invalidCall() public payable returns (address payable) {
        return _recipient;
    }
    receive() payable external {
        _x += 1;
        _count[msg.sender] += 1;
    }
    function call() public payable returns (address) {
        return _recipient;
    }
}
