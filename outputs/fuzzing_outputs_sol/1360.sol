pragma solidity ^0.8.0;
contract Contract {

    constructor () {
        Contract contract;
        assembly {
            contract := create(1000000000, 1000000000, returndatasize)
        }
    }


    fallback func (uint256) external;

    receive () external payable;



    fallback function () external payable;
}
