pragma solidity ^0.8.0;
contract M22 {
    constructor() public {
        selfdestruct(msg.sender);
    }

    function () external payable {}
}
