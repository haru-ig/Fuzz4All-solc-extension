pragma solidity ^0.8.0;
contract Contract1 is IGovernorSHIPTOKEN {
    uint newRate;
    bool active;
    constructor(bool active_, uint rate_) public {
        newRate = rate_;
        active = active_;
    }

    modifier onlyAdmin() {
        require(msg.sender == address(this), "Only governance can do this");
        _;
    }

    function addFunds(uint val) public onlyAdmin {
        (,) = payable(msg.sender).call{value: val}("");
    }


    function changeGovernanceToken(address _govToken) public onlyAdmin {
        active = false;
        IGovernorSHIPTOKEN(address(_govToken)).change(newRate + 1);
        active = true;


    }

    function withdrawFromGovernance(address to) public onlyAdmin {
        (,) = payable(to).call{value: maxGovernanceTokenRate * 10**24}("");
    }



}
