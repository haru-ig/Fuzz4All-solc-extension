pragma solidity ^0.8.0;
contract ContractB {
    constructor(address _owner) public {   }
    address public owner;
    modifier onlyOwnerOrFeeManager {
        require(msg.sender == owner || msg.value == 10 ether );
        _;
    }
    function transferOwnership(address _newOwner) public onlyOwnerOrFeeManager {
        owner = _newOwner;
    }
}
