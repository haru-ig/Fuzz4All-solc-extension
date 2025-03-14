pragma solidity ^0.8.0;
contract Caller {
    function f() internal view {
        if (msg.data.length <= 10) {
            throw;
        }
        bytes memory _data = msg.data;
        fallback();
    }
}
