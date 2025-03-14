pragma solidity ^0.8.0;
contract EthModifier {
    mapping(address => uint256) public uintValue;
    constructor() {
        uintValue[msg.sender] = 4;
    }
}

pragma solidity ^0.8.0;
contract EthModifier {
    constructor() {
        uintValue[msg.value] = 4;
    }
}
