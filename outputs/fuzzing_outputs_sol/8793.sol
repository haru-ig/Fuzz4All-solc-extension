pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public {}
    fallback() public payable {
        require(msg.value == value);
    }
}

pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public {}
    receive () external payable {}
    fallback() external payable {
        require(msg.value == value);
    }
}
pragma solidity ^0.8.0;
contract TestCaller {
    uint public constant value = 9;
    constructor () public {}
    receive () public payable {}
    fallback () public {
        require(msg.value == value);
    }
}
