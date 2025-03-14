pragma solidity ^0.8.0;
struct Caller {
    bytes32 returnAddress;
    uint256 amount;
    mapping(bytes32 => uint256) gasToPay;
}
contract MutatedCaller4 {
    Caller caller = Caller(address(0x1));
    uint256 gasLimit;


    function payable() external {
        gasLimit = msg.value;
    }
}
