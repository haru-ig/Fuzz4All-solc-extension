pragma solidity ^0.8.0;
contract Contract14Mutate {
    function receive() external payable {}

    fallback() external payable {
        msg.sender.transfer(msg.value);
    }
}
contract Caller {
    address private minter;

    constructor(address _mintingAddress) {
        minter = _mintingAddress;
    }

    function () external payable {
    }
}
