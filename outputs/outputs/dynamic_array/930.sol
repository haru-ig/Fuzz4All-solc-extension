pragma solidity ^0.8.0;
contract Pre1NewSolidity {
    struct NewMapping {
        address owner;
        bool isAdmin;
    }
    mapping (address => NewMapping) public accounts;

    function transfer(address _to, uint _value) public {

        if (accounts[msg.sender].isAdmin) {
            accounts[msg.sender].isAdmin = false;
            delete accounts[msg.sender];
        }
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        emit Transfer(msg.sender, _to, _value);
    }
}
