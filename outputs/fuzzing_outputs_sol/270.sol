pragma solidity ^0.8.0;
contract MutatedMutation {
    constructor() payable {}
    function mutate() public payable {
        _;
    }
    fallback () external payable {}
}
