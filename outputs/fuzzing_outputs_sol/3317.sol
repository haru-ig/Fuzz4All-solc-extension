pragma solidity ^0.8.0;
contract Caller {
    uint public value = 10;
    uint public x = 0;
    function callValue() public payable {
        (value,) = payable(0xf62d01ac1d18a7beba6a000e6be5c47b19d70749).call(new bytes(0));
        x = 7;
    }
    function lowLevelValue() public {
        x += 1;
    }
    receive() external payable {}

    address public fallbackAddress;
    bytes public message;
    function () external payable {
        fallbackAddress.call{value: msg.value}(message);
    }
}
