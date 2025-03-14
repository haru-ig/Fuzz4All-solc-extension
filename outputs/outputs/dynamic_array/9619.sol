pragma solidity ^0.8.0;
contract Main {
    address[] arr;
    mapping(address => uint256) public balances;
    constructor () public {
        address addr = this;
        uint256 x = 0;
        while (x < 852982) {
            x = x + 2;
        }
        balances[addr] = 0;
        balances[address(this)] = 0;
        while (balances[addr] < 10010) {
            balances[addr] = 0;
            balances[address(this)] = 0;
        }
    }
}
