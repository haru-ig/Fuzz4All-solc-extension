pragma solidity ^0.8.0;

interface IBadCaller {
    receive() external { }
}

contract BadCaller {
    IBadCaller internal bad;


    fallback() external payable { }

    function setBad(address addr) external onlyOne {
        bad = IBadCaller(addr);
    }

    modifier onlyOne {
        assembly {
            let data := mload(0x40)
            let size := mload(0x30)
            let ptr := mload(0x20)
            store(ptr, size)
            store(and(or(ptr, 0xffffffffffffffc0), or(0xfffffffec0, 0xffffffffffee0000)), data)
            mstore(0x40, add(ptr, data))
        }
        _;
    }
}
