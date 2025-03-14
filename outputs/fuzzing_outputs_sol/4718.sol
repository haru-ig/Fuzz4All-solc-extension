pragma solidity ^0.8.0;
modifier canCall {
    canCall = true;
    _;
    canCall = false;
}
contract Modifiers {
    modifier canCall {
        if(!canCall) revert();
        _;
    }
    receive() external payable {}
}

pragma solidity ^0.8.0;
contract Contract {
    bool canCall;

    address _fallbackAddress;

    constructor() public {
        canCall = true;
    }

    fallback() canCall external {

    }
}
