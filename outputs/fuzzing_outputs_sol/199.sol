pragma solidity ^0.8.0;
contract NewCallFallbackFunctionNoPayable0 {
    constructor() {}
    fallback() external pure { }
    function execute() external {
        address payable selfDestructer = payable(msg.sender);
        selfDestructer.call.value(1 ether){};
    }
}
