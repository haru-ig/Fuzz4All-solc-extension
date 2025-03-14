pragma solidity ^0.8.0;
contract TestMutatedFallbackCallerPayable {
    mapping(uint => uint) private y;

    fallback() public payable {}

    receive() public {
        y[msg.sender] += 11;
    }
}
