pragma solidity ^0.8.0;
contract Contract15Mut15 {
    contract Contract15 {
        event Fulfilled(address owner, uint256 indexed value);
    }
    struct Contract15 {
         uint256 storedNumber;
         uint256 storedNum2;
    }

    uint256 public num;
    function add(uint256 value) public returns (uint256) {
        Contract15 memory c = Contract15({
            storedNumber : num,
            storedNum2 : value
        });

        c.storedNumber = value;
        c.storedNum2++;

        return c.storedNum2;
    }

    constructor() public {
    }
}
