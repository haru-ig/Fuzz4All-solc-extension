pragma solidity ^0.8.0;
contract Example6 {
    address payable public _to;

    constructor(address payable to) {}

    function setTo(address payable to) public {
        _to = to;
    }

    receive() external payable {
        _to.transfer(msg.value);
    }
}
