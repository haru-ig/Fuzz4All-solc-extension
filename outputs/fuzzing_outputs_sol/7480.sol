pragma solidity ^0.8.0;
contract Fallback {
    fallback() public {
    }
}

pragma solidity ^0.8.0;
contract Contract {
    constructor() {
        msg.sender.sendEther(msg.value);
    }
}
