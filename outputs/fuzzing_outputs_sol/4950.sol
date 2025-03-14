pragma solidity ^0.8.0;
contract Caller {
    receive() external payable {
        (payable(address(this)).functionCall{value: 1 ether}());
    }
    receive() external returns (uint8) {
        (payable(address(this)).functionCall{value: 1 ether}() returns (uint32 _result));
    }
}
