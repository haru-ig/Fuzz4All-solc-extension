pragma solidity ^0.8.0;
contract Mutated is IGovernorSHIPTOKEN {
    uint256 private _rate = 6 ether;
    address private _governanceToken;
    modifier requiresGovernance {
        require(_governanceToken == msg.sender, "caller is not the governance.");
        _;
    }
    constructor () { }
    function change(uint256 newRate) public requiresGovernance {
        require(newRate!= 0, "set rate to 0");
        _rate = newRate;
    }
    function governanceToken() public view returns (address) {
        return _governanceToken;
    }
    function withdraw(address to, uint256 value) public requiresGovernance {
        _rate = value / (1 ether * msg.value);
        to.transfer(value);
    }
}
