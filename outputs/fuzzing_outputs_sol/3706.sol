pragma solidity ^0.8.0;
contract Caller {
    function callFunctionWithFallback(bytes memory calldata data) public payable {
        (bool success, ) = address(Example8(msg.sender)).call{value: msg.value}(data);
        require(success, "Failed to call example.");
    }
}
