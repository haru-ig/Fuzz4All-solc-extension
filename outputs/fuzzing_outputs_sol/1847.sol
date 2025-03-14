pragma solidity ^0.8.0;
contract FallbackRecipient {
    uint constant _value = 2;
    uint public balance;
    uint public constant _gasPrice = 500;
    constructor() {
        balance = 0;
    }
    receive() external payable  {
        balance = 1;
    }
}




pragma solidity ^0.8.0;
contract Complex {
    uint constant _gasPrice = 1000;
    constructor()  {}
    receive() external payable {
        uint gas = gasleft();
        for(uint i = 1; i < 2*gas ; i++) {
            uint value = message.value;
            assert(value >= _gasPrice, "! gasPrice");
            value = gas/value;
            assert(value < gas, "? gas > value");
        }
        for(uint i = 0; i < gas; i++) {
            gasleft()
        }
    }
}
