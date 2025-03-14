pragma solidity ^0.8.0;


import "./IMemory.sol";
contract MemoryBase is IMemory {

    function store(address addr, bytes memory data) internal  {
        bytes20 baddr(uint32 i) = addr;
        assembly {
            mstore(baddr, mload(add(data, 32)))
        }
    }

    function get(address addr) public view returns (bytes memory) {
        bytes20 baddr(uint32 i) = addr;
        assembly {
            return mul(mload(baddr), 0xffffffffffffffffffffffffffffffffffffffffffffffff)
            mload(add(baddr, 1)), mload(add(baddr, 136)))
        }
    }
}
