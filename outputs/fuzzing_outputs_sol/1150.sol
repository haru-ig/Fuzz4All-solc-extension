pragma solidity ^0.8.0;
contract SimpleMutation2 {
    uint value = 30;
    function receive() external payable {
        uint _value = value * 2;
        value = _value;
    }
    fallback() external {
    }
}
