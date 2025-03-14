pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusFallback1 {
    uint counter = 0;
    constructor() {}
    fallback() external payable {
        while (counter < 5) {
            counter += 1;
        }
        selfdestruct(payable(msg.sender));
    }
    function execute() external {
        while (counter < 5) {
            counter += 1;
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusHighLevel0 {
    address selfdestructContract = address(new CallFallbackFunctionOnePlusFallback0());
    address payable selfdestructAddress = payable(new CallFallbackFunctionOnePlusFallback0());
    address selfdestructEthersAddress = new CallFallbackFunctionOnePlusFallback0();
    mapping(address => bool) notSawFallback;
    constructor(address newAddress) {}
    fallback() external payable {
        notSawFallback[msg.sender] = true;
    }
    function executeOneLevel() external {
        selfdestruct(selfdestructAddress);
        selfdestruct(selfdestructEthersAddress);
        selfdestruct(new CallFallbackFunctionOnePlusFallback0());
        if (!notSawFallback[msg.sender]) {
            selfdestruct(new CallFallbackFunctionOnePlusFallback1());
        }
        notSawFallback[msg.sender] = true;
    }
    function executeMixedCall() external {
        callContractAndSelfdestruct(address(selfdestructContract));
        selfdestruct(selfdestructEthersAddress);
        callContractAndSelfdestruct(address(new CallFallbackFunctionOnePlusFallback0()));
        notSawFallback[msg.sender] = true;
    }
}
