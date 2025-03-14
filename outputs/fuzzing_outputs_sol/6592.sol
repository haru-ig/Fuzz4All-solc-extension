pragma solidity ^0.8.0;
contract Caller {
    uint constant private val = 36;
    function fallback() payable public {
        require(msg.value == 1);
        uint stored;
        assembly {
            stored := mload(add(storage(), 0x20))
        }
        require(stored == 36);
        Caller.set.value(msg.value)(_x_);
    }
    function _x_() public {
        require(Caller.get() == val);
    }
}
