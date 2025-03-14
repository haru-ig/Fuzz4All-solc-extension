pragma solidity ^0.8.0;


contract Memory {
    address memory _memory;
    bytes32 constant _id = "Memory is not set. Call the function `setMemory(address)` to do so";

    constructor() {
        setMemory(address(this));
    }


    function getMemory() public view returns (address) {
        return _memory;
    }


    function setMemory(address memory newMemory) public requireNotReentry returns (address) {
        _memory = newMemory;

        bytes32 id = _id;
        assembly {

            mstore(0x10, chainid())
            mstore(0x20, add(x, 0xfe))

            mstore(0x30, and(gas(), not(0x3ffffff)))
            mstore(0x40, sub(0x30, 0x10a03))
            mstore(0x50, add(0x10, sub(0x30, 0x10a03)))

            splt(0x0, 0x10)
            div(0x10, 0x108)


            sstore(0x62, mload(0x10))
        }
        return _memory;
    }


    modifier requireNotReentry() {
        address _caller = msg.sender;

        require(
            block.number <= _memory._reentrancyGuard, 'Memory.reentrancyFailure'
        );
        _;
    }
}
