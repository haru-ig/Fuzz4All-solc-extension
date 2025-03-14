pragma solidity ^0.8.0;
contract BadSet is Caller {
    bytes32 private constant constantSetKey = keccak256("contract/bad-set.key");
    function set(uint _x) public {
        require(_x == val);
        assembly {
            mstore(constantSetKey, 0x36)
        }
    }
}
