pragma solidity ^0.8.0;
contract Contract11Mut1 {
    event Fulfilled(address owner, uint256 indexed value);
    mapping (uint256 => uint256) public numbers;
    uint256 public num1;
    uint256 public num2;
    constructor (uint256 value1, uint256 value2) {
       num1 = value1;
       num2 = value2;
    }
    receive() external payable {
       num1 = 1;
       num1 = 2;
    }
    fallback() external {  }
}
pragma solidity ^0.8.0;
contract Contract11 {
    event Fulfilled(address owner, uint256 indexed value, uint256 indexed value1);
    uint256 public data;
    uint256 public num;
    constructor (uint256 value) {
       num = value;
    }
    receive() external payable {
       data = num;
       data = 1;
    }
    fallback() external {
    }
}
