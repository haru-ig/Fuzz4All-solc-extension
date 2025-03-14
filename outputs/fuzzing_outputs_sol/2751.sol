pragma solidity ^0.8.0;
contract Caller1 {
    function _fallback() public {
        (bool success, ) = address(this).call.value(msg.value)();
        assert(success);

    }
    receive() external {
        (bool success, ) = address(this).call.value(msg.value)();
        assert(success);
    }
    fallback () external {
        (bool success, ) = address(this).call.value(msg.value)();
        assert(success);
    }
}
