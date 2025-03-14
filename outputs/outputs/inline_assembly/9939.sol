pragma solidity ^0.8.0;
contract C {
    uint256 public x;
    uint256 y;
    uint256 z;
    constructor() {
        x = 4;
        y = 5;
        z = x + y;
    }
    function set(uint256 v) public {
        x = v;
        y = v - x;
        z = x + y;
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    uint256 public x;
    uint256 public y;
    uint256 public z;
    uint256 public yValue;
    uint256 public xValue;
    uint256 public zValue;
    mapping(uint256 => uint256) public mappings;
    constructor() {
        value = 4;
        value2 = value;
        x = 7;
        y = 9;
        z = x + y;
        yValue = y;
        xValue = x;
        zValue = z;
        mappings[y] = xValue;
        mappings[x] = yValue;
        value = value2 + yValue + zValue;
    }
    function test(uint256 fizz, uint256 fizz2) public {
        mappings[fizz + fizz2] = fizz + fizz2 + yValue + xValue + zValue;
        value = value2 +  yValue + xValue + zValue;
    }
    function yell() public {
        emit Yell();
    }
    function pay(uint256 payment) public {
        require(msg.sender == address(this));
        require(payment <= value);
        value = value - payment;
        payable(msg.sender).transfer(payment);
    }
}

pragma solidity ^0.8.0;
contract C {
    uint256 public value;
    uint256 public value2;
    uint256 public x;
    uint256 public y;
    uint256 public z;
    uint256 public yValue;
    uint256 public xValue;
    uint256 public zValue;
    mapping(uint256 => uint256) public mappings;
    mapping(
