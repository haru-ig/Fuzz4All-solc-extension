pragma solidity ^0.8.0;
contract m07__ {
    function M7(bytes memory _c) public {
        bytes _e = "0x0000000000000000000000000000000000000000000";
        require(_c.length > _e.length, "Test failed: _c.length should equal _e.length");
    }
}
