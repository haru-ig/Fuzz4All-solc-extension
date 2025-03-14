pragma solidity ^0.8.0;
contract Test {
    bool public flag;

    mapping(address => bool) public addressFlag;

    constructor() { addressFlag[msg.sender] = false; }

    receive() { addressFlag[msg.sender] = true; }

    modifier ifOnlySender() {
        require(msg.sender == address(this), "FAIL0");
        _;
    }

    function MutateData() public ifOnlySender {
        flag =!flag;
    }
}
