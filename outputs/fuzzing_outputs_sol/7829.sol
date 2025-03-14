pragma solidity ^0.8.0;
contract SimpleCaller {
    address payable payee;
    fallback() external payable {
            payee.transfer(address(this).balance);
    }
    constructor() {}
}
