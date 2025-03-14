pragma solidity ^0.8.0;
contract Fallback {
    function execute(bytes memory data) public pure {
        (bool success,, ) = address(address(this)).call{value: msg.value}(data);
        require(success, "Fallback did not return false");
    }
}
contract LongRunning {
    function execute() public pure {
    }
}
