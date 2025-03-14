pragma solidity ^0.8.0;
contract CallerFallbackImpl {
    address payable contractOwner;
    address public fallbackToEther;
    uint public valueOut;

    fallback() public payable {}

    receive() external payable {
        contractOwner.transfer(msg.value);
    }

    receive() external {
        fallbackToEther.transfer(msg.value);
    }

    constructor(address payable _backFunction) {
        contractOwner = msg.sender;
        fallbackToEther = _backFunction;
    }
}
pragma solidity ^0.8.0;
contract CallerFallback {
    address payable contractOwner;
    address public fallbackToEther;

    fallback() external payable {}

    receive() external payable {}
}
pragma solidity ^0.8.0;
