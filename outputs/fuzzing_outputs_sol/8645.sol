pragma solidity ^0.8.0;
contract Reactor {
    uint256 constant OVERRIDES_FUNDING = 30 ether;
    uint256 constant REWARDS_FUNDING = 90 ether;
    address private _base;
    address private _mutator;
    address private _rewards;

    constructor(address base, address mutator, address rewards)
    {
        _base = base;
        _mutator = mutator;
        _rewards = rewards;
    }



    function process() public payable {
        _mutate();
        _reward();
    }

    function _mutate() public {
        Mutator(address(this)).transfer(address(this), OVERRIDES_FUNDING);
    }


    function _reward() public {
        _rewards.transfer(address(this), address(this).balance + REWARDS_FUNDING);
    }
}
