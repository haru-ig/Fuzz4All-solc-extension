pragma solidity ^0.8.0;


contract Foo {
    constructor() {
        require(false);
        log("msg.data.length", msg.data.length);
    }

    function log(uint256 index, uint256 length) public pure {
        bytes memory message = new bytes(32);
        assembly {
            sstore(0, mload(add(message, 0x20)))
            calldatacopy(add(message, 32))
            let size := mload(add(message, 32))
            {
            size
            }
            returndatacopy(0, add(message, 0x20), size)
            log0(address(this), index, size, mload(add(memory, 0x20)))
            return(0)
        }
    }

}
