pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusOne {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() external payable {
        notSawFallback[msg.sender] = true;
    }
    function execute() external {
        (bool success, ) = payable(msg.sender).call{value: 2 ether}("");
        require(success, "Fallback not called");
        require(notSawFallback[msg.sender], "Fallback not called twice");
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusZero {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() public {}
    function execute() public {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(msg.sender);
        }
    }
}

pragma solidity ^0.8.0;
contract CallFallbackFunctionOnePlusOne {
    mapping(address => bool) notSawFallback;
    constructor() {}
    fallback() public payable {}
    receive() public payable {}
    function execute() public {
        if (!notSawFallback[msg.sender]) {
            selfdestruct(payable(msg.sender));
        }
    }
}
