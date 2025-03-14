pragma solidity ^0.8.0;
contract Caller {
    uint public constant min = 10;
    uint public constant max = 100;
    uint public count = 0;
    mapping(address => uint) public balances;
    address[] public callers;
    constructor() {
        balances[address(this)] = 100;
        balances[address(0x00000000000000000000000000000000000000000000000000000000000000000)] = 10;
    }

    function changeAddress() public {
        address addr = msg.sender;
        balances[addr] = 0;
        callers.push(addr);
    }

    function removeAddress(address addr) public {
        address lastCaller;
        uint n = callers.length;
        if (n == 0) {
            if (balances[addr] == 0) return;
            if (balances[addr] >= min && balances[addr] < max) {
                lastCaller = callers[n - 1];
                balances[addr] = 0;
                counts.remove(addr);
            }
        } else {
            lastCaller = callers[n - 1];
            callers.length--;
            if (balances[addr] == 0) {
                balances[addr] = 10;
            }
        }
        if (msg.sender == lastCaller) {
            balances[addr] = count + 1;
        }
    }

    function setCaller(address addr) public {
        address lastCaller;
        uint n = callers.length;
        if (balances[addr] >= min && balances[addr] < max) {
           balances[addr] =
