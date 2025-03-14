pragma solidity ^0.8.0;
contract C {
    constructor(address payable a, uint128) public payable {
        require(a!= address(0));
    }
}
