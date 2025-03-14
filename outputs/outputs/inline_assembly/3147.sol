pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        mapping (uint => address) users;
    }
    mapping(address => BData) public balances;
    function deposit() public {
        balances[msg.sender].users[1] = payable(address(0));
    }
}
```
