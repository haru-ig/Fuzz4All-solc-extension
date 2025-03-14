pragma solidity ^0.8.0;
contract Restricted{

    modifier restrictedCallerOnly() {
        require(msg.sender == msg.data || super.msg.sender == msg.data && msg.sender == owner(), "Restricted: onlyOwner");
        _;
    }


    modifier restrictedOwnerOnly() {
        require(msg.sender == owner(), "Restricted: onlyOwner");
        _;
    }

    struct Beneficiary {
        address beneficiary;
        address _owner;
    }

    Beneficiary[] public beneficiaries;
    uint public numberOfBeneficiaries = 0;

    function addBeneficiary(address _beneficiary) public restrictedCallerOnly {
         beneficiaries.push(Beneficiary(_beneficiary, msg.sender));
         ++numberOfBeneficiaries;
    }

    address private owner;
    address public constant ownerModifiableFromModifiable;

    uint public limit = 0;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyIfNotOwner() {
        require(msg.sender!= owner, "Only owner can call the function");
        _;
    }

    function setLimit(uint _limit) public restrictedCallerOnly {
        limit = _limit;
    }

    function addTransactionIfReached() public onlyIfNotOwner restrictedOwnerOnly {
        if(msg.value >= limit) addBeneficiary(msg.sender);
    }
}
