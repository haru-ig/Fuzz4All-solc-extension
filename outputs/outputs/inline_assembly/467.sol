pragma solidity ^0.8.0;
contract SemanticallyEquivalenty20 {
    address public admin;
    constructor () public {
        admin = msg.sender;
    }
    modifier onlyAdmin(){
        require(admin == msg.sender, "only admin can call this method");
        _;
    }
    event Log(string value1);
}
