pragma solidity ^0.8.0;
contract InitialCaller {
    uint256 internal x;
    receive() external payable {
        x = 1;
    }
    constructor() {   x = 2;
    }
}
contract SecondCaller {
    uint256 internal x;
    receive() external payable {
        x = 1;
    }
    constructor() { x = 2;
    }
}

pragma solidity ^0.8.0;
contract CallerFallbackReceiving {
    uint256 constant x;
    address payer = payable(msg.sender);
    uint256 constant y;

    receive() external payable {
        payer.sendValue(1 * x);
    }
    constructor(address payable _x) { x = _x; y = 1; }
    fallback() external payable {
        payer.sendValue(1 * x);
    }
}
contract InitialCallerReceiving {
    address payable internal x;
    uint256 constant y;

    receive() external payable {}
    constructor(address payable _x) { x = _x; y = 1; }
    fallback() external payable {
        x.sendValue(1 * x);
    }
}
contract SecondCallerReceiving {
    address payable internal x;
    uint256 constant y;

    receive() external payable {}
    constructor(address payable _x) { x = _x; y = 1; }
    fallback() external payable {
        x.sendValue(1 * x);
    }
}
