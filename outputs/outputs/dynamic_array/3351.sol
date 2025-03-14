pragma solidity ^0.8.0;


contract TestContractFactory {

    methodTest() public payable {
        IERC20 token = IERC20(0);
        bytes memory calldata = "hello".memory;
        token.transfer(0,calldata);
    }
}
