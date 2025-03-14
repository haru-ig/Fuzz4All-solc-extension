pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => address) users;
    }
    bytes32 public owner;
    BData public balances;
    constructor() {
        balances.id = 1;
        balances.name = "abc";
        balances.number = 111;
        balances.boolVal = false;
        balances.users[1] = address(this);
    }
    function addToBalances(uint newId) public {
        balances.id += 1;
        balances.users[newId] = msg.sender;
    }
    function showBalances() public view returns (uint[] memory users) {
        users = balances.users.values();
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
}
