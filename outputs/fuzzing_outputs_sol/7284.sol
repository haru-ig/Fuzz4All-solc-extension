pragma solidity ^0.8.0;
contract NamelessCaller {
    address public value;
    constructor() {
        value = address(this);
    }

    fallback() external payable {
        value = msg.sender;
    }
    function example3() public {



        msg.sender.sendValue(1 ether);
    }
}
