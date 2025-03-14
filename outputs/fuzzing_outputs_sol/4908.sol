pragma solidity ^0.8.0;
contract MutuallyMutuallyExclusive {
    constructor(
        address payable _address1
    ) {
        require(_address1!= address(0x0));
        uint256 storedBalance = address(this).balance;
        require(address(_address1).balance == storedBalance-10000 wei);
    }
    fallback() payable {
        uint256 storedBalance = address(this).balance;
        require(address(0x0).balance == storedBalance+10000 wei);
    }
}
