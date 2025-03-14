pragma solidity ^0.8.0;
contract SemanticallyEquiv
{
    uint public a;
    constructor() {
        a = a - 1;
    }
    function update() public {
        a = a / 2;
    }
}
contract SmartContract
{
    bytes4 constant internal UPDATES = bytes4(keccak256("update"));

    mapping (address => bool) isMutating;

    constructor(uint32 _value) {
        isMutating[msg.sender] = true;
    }

    receive() external payable virtual override() {}
}
