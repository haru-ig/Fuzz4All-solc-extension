pragma solidity ^0.8.0;
contract MyOwnable{
    address public contractAddress;
    constructor() internal{
      contractAddress = address(this);
    }
    mapping(address => bool) public isContractOwner;
    modifier onlyContractOwner{
        require(isContractOwner[msg.sender], "User must be owner");
        _;
    }
    function setContractOwner(address _address, bool _contractOwner) public onlyContractOwner{
        isContractOwner[_address] = _contractOwner;
    }
    modifier ONLY_CONTRACT_OWNER{
        require(isContractOwner[msg.sender], "User must be owner");
        _;
    }
}
