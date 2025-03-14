pragma solidity ^0.8.0;
contract B {
    mapping(address => uint) private balances;
    uint constant RANGE = 10;
    uint constant MIN_INTEGER = 4500000;
    uint constant MAX_INTEGER = 20000000;
    uint private num1;
    uint private num2;
    uint private x;


    constructor () {

    }


    fallback () {

    }


    receive () payable {

    }

    function getValue(uint x) public returns (uint) {

        return x * x;
    }

    function buy() public payable {
        uint total = msg.value * num1;
        uint price = getValue(num2);
        balances[tx.origin] += total;
        total -= msg.value;
    }

    function withdraw(uint x) public {
        balances[msg.sender] += x;
    }

    function getMaxValue() public returns (uint) {
        return MAX_INTEGER;
    }

    function test () public returns (uint) {
      return 10;
    }
}
