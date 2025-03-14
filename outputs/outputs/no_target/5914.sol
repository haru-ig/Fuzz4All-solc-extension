pragma solidity ^0.8.0;
contract C {
    constructor(address payable a, uint128) public {
        require(a!= address(0));
    }
}
