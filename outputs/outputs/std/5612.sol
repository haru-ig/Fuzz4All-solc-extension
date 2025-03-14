pragma solidity ^0.8.0;
contract Mutate254 is Mutate253{
    address public admin;
    address public admin2;
    mapping(address => bool) public Admins;
    constructor(){
        admin2=msg.sender;
        admin=msg.sender;
        admins[owner]=true;
    }
    modifier onlyAdmin(){
        require(isAdmin());
        _;
    }
    function setAdmin() public onlyAdmin{
        admin=admin2;
    }
    function updateAdmin() public{
        admin=admin2;
        emit AdminUpdated(owner,admin);
    }
}
