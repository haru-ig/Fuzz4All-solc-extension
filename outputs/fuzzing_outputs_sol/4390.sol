pragma solidity ^0.8.0;
contract CallError {
    fallback() external {
        require(x == 100, "FAIL 0");
    }
    mapping(address => int) x;
    receive() external payable{
        x[msg.sender] += 10;
    }
}
contract ReceiverError {
    fallback() external {
        require(msg.value == 100, "FAIL 1");
    }
    uint x;
    receive() external payable{
        x = msg.value + 10;
    }
}
