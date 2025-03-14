pragma solidity ^0.8.0;
contract Mutate254 is Mutate253{
    uint public amount;
    address[] public accounts = new address[](2);
    constructor(){
        amount=0;
        accounts[0]=msg.sender;
        accounts[1]=msg.sender;
    }
    modifier onlyFirstAccount(){
        require(amount==0, "Contract has mutated! Remove it before moving onto the next account.");
        _;
        amount++;
    }
    function setAccount(address account) public onlyFirstAccount{
        require(amount==1);
        accounts[1]=account;
        emit AdminUpdated(accounts[0], account);
    }
    function getFirstAccount() public view returns(address){
        return accounts[0];
    }
}
