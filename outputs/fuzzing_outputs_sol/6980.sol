pragma solidity ^0.8.0;
library returner {
    function get(uint _value) internal pure returns (uint  ) {
        return _value;
    }
}
contract SomeContract {
    uint internal value;
    function set() public {
        value = 1;
    }
}
contract Caller {
    uint internal value;
    function get() public returns (uint) {
        return value;
    }
    function set() public {
        address payable addr = payable(msg.sender);
        byte memory data = abi.encodeWithSignature("()");
        (bool success, bytes memory result) = addr.call{value: 1 wei}(data);
        if (!success) revert("failed");


        returner.get(result);
    }
}
