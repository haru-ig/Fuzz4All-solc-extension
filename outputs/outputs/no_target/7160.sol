pragma solidity ^0.8.0;
contract Test {
    uint id;
    uint256 private counter;
    function setID() public {
        id = 1;
        counter++;
        id++;
        counter--;
        id--;
    }
}

contract Example {
address constant adminAddress = 0x0958baff049c9592c9a60c91042ef86073dfdb00;
    address constant beneficiaryAddress = 0xCe24DeD56809C670395920532217CaeBb8479323;
    address payable beneficiary;
    string public version;
    constructor() public {
        version = "Test 0.1";
        beneficiary = payable(beneficiaryAddress);
    }
    modifier nonZeroAddress(address _address) {
        assert(_address!= address(0));
        _;
    }
    modifier onlyBeneficiary {
        assert(msg.sender == beneficiaryAddress);
        _;
    }
    function setBeneficiary(address _beneficiary) nonZeroAddress(_beneficiary) public onlyBeneficiary {
        beneficiary = payable(_beneficiary);
    }
}
