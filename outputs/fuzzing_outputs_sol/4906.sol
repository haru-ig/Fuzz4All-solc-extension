pragma solidity ^0.8.0;
contract MutedFallbackFallback {
    receive() external payable {
    }
    fallback() external payable {}
}

pragma solidity ^0.8.0;
contract MutedFallback {
    constructor() {}
}

contract Caller {
    function trans() public payable {}
    receive() external payable {
        address _caller = msg.sender;
        call(_caller);
    }
    function call(address from) public payable {
        (bool success, bytes memory returnData) = from.call.value(msg.value)("");
        require(success, returnData);
    }
}
