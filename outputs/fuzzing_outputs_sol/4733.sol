pragma solidity ^0.8.0;
contract Mutator {
    constructor() payable {
        require(true);
    }
    function Mutate() returns (address payable) {
        require(true);
        return payable(address(0));
    }
}
