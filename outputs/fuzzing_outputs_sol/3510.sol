pragma solidity ^0.8.0;
contract MutatedStorage6 {
    uint public num;
    event Increased(uint value);
    constructor() public {
        num = 0;
    }
    function increase(uint _number) public returns (bool) {
        num += _number;
        Increased(num);
        return true;
    }
    receive() external payable { num += msg.value; }
}
contract Caller {
    constructor(MutatedStorage6 storage storageVar, MutatedStorage5 store) public {
        MutatedStorage6 storage = storageVar;
        store.increase(100);
    }
}
