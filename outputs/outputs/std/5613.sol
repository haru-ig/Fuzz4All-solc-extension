pragma solidity ^0.8.0;
contract Mutate254 is Mutate253, Ownable{
    uint256 public number;
    mapping(address => bool) public admins;
    constructor(){
        admins[owner]=true;
        admins[msg.sender]=true;
    }
    modifier onlyOwn(){
        require(isAdmin());
        _;
    }
    function setAdmin(address account) public onlyOwn{
        admins[account]=true;
    }
    function isAdmin() public view returns(bool) {
        return admins[msg.sender];
    }
    event AdminUpdated(address oldAddress, address newAddress);
}
