pragma solidity ^0.8.0;
contract Caller {
    function callMe() public pure returns (address) {
    assembly {
        let storage := mload(0x40)
        return add(storage, 1)
    }
    }
}
