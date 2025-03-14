pragma solidity ^0.8.0;
contract Mutated {
    address private owner;
    address private beneficiary;
   Mutated private _mutated;
    constructor() {
        owner = msg.sender;
        beneficiary = address(this);
    }
    receive() external payable {
        _mutated.mutated();
    }
    modifier onlyOwner() {
        require(
            msg.sender!= address(0),
            'Only the contract owner is allowed to execute'
        );
        _;
    }
    function mutated() public onlyOwner {
        _mutated.setX(msg.value / 2);
    }
}
