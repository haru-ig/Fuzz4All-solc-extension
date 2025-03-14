pragma solidity ^0.8.0;
contract C {
    struct BData {
        uint id;
        string name;
        uint number;
        bool boolVal;
        mapping (uint => address) users;
    }
    BData public balances;
    address payable public contractOwner;
    mapping (address => bool) public contractOwnerOnly;
    constructor(address payable contractOwner_) {
        contractOwner = contractOwner_;
    }
    modifier onlyContractOwner {
        require(isContractOwner());
        _;
    }
    function isContractOwner() public view returns (bool) {
        return msg.sender == address(this) && contractOwnerOnly[msg.sender];
    }
    function isContractOwnerOf(address _contract) public view returns (bool) {
        require(isContractOwner());
        return contractOwnerOnly[_contract];
    }
    function onlyContractOwnerCan(address _contract) public onlyContractOwner returns (bool) {
        return isContractOwnerOf(_contract);
    }
    function transferOwnership(address payable _contractOwner) public onlyContractOwner returns (bool) {
        contractOwnerOnly[msg.sender] = true;
        return true;
    }



}
