pragma solidity ^0.8.0;
contract Caller {
    function _fallback() internal {
        address x = msg.sender;
        (bool flag, ) = x.call{value: 1 ether}("");
        if (flag) {
            address y = x;
        }
    }
}
