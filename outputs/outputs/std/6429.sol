pragma solidity ^0.8.0;
contract Conversion {
uint256 public constant POW = 10**7;
uint256 public constant MIN_LENGTH = 20;
struct Fibonacci {
    uint256[20] memo;
    uint256 size;
    address address_contract;
    mapping(address => mapping(address => bool)) allowed;
    modifier onlyAllowed(address from, address to) {
         require(allowed[from][to] == false,"Contract owner only");
         allowed[from][to] = true;
         _;
         allowed[from][to] = false;
      }
    constructor () {
         size = 20;
         address_contract = msg.sender;
     }
    function getFibonacci(uint256 offset) public view returns(uint256) {
      offset %= size;
      if (offset < 1) {
        return 0;
      }
      offset = size + offset;
      return memo [offset];
    }
}
}
