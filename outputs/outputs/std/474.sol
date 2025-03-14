pragma solidity ^0.8.0;
contract test{
    mapping (address => bool) private owner;
    function createAccount(address addr) public {
        owner[addr] = true;
    }
    function getAccountOwner(address addr) public view returns(bool){
        return owner[addr];
    }
    function createAccount(){
        createAccount(msg.sender);
    }
}
address x = 0x281e0b170000;
