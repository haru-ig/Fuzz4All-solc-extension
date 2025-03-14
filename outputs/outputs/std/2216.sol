pragma solidity ^0.8.0;
contract MutationP {
    uint x;
    address owner;
    constructor(){
        owner = msg.sender;
        x = 1;
    }
    modifier onlyOwner {
        require(msg.sender == owner, "Caller is not the owner");
        _;
    }
    function setBar() public onlyOwner {
        x = 2;
        emit Mutated(x);
    }
    event Mutated(uint x);
    function getBar() public view returns (uint256) {
        return x;
    }
    string private name;
    constructor(string memory _name, uint _version){
        x = _version;
        name = _name;
    }
    function getName() public view returns (uint256){
        return x;
    }
    function setVersion(uint _v) public {
        x = _v;
        emit Mutated(x);
        emit NameChanged(name);
    }
    event NameChanged(string);
}
