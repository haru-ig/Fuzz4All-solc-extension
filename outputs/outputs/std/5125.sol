pragma solidity ^0.8.0;
contract Semantics2 {
    using Memory for uint[];
    address public beneficiary;
    mapping(address => uint) public balance;
    uint[] public data;
    uint public d0;
    uint256 public result = 1;
    uint256 public a = 1;
    uint256 public b = 10;
    constructor () public {
        memory.write(this.balance, 0xA576217FEE3734F, 8);
    }
    function f(uint a, uint, uint d) public pure returns (uint) {
        d0 = d;
        result = a - b / (a + b * 262143e-3);
        return result;
    }
}
