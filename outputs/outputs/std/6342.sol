pragma solidity ^0.8.0;
contract Old {
    mapping (address => New) public Users;
    constructor(address user) public {
        new New.New(user);
    }
    function getBalance(address userAddress) public view returns(New) {
        return Users[userAddress];
    }
}
