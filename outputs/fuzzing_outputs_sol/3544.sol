pragma solidity ^0.8.0;
contract MutatedFallback {
    fallback () external payable {}
}

pragma solidity ^0.8.0;
contract Caller {
    uint fee;
    constructor () {
        fee = 20;
    }
    fallback () external {
        require(msg.value == fee);
    }
}
