pragma solidity ^0.8.0;
contract SimpleFallbackCaller3 {
    uint256 constant AMOUNT = 333;
    uint8 internal constant DECIMALS = 12;
    mapping(address => uint256[]) public accounts;
    address public caller;

    constructor() {
        accounts[ msg.sender ].push(AMOUNT);
        accounts[msg.sender].push(5);
        caller = msg.sender;
    }

    fallback() external payable {
        require(msg.value == AMOUNT);
        require(accounts[ msg.sender ].length > 1);
        uint256 index = accounts[ msg.sender ].length;
        accounts[msg.sender][--index] += AMOUNT;
        emit MyEvent(msg.sender, AMOUNT, index);
        uint256 valueToSend = accounts[ msg.sender ][--index];
        uint result = valueToSend / DECIMALS + AMOUNT;
        require(accounts[ msg.sender ].length == 0);
        accounts[ caller ].push(result);
    }
}
