pragma solidity ^0.8.0;
contract D {
    assembly {
        let _slot := mload(slot(0))


        mstore(slot(0), mload(slot(0)) ^ 0xfffffffffff)


        mstore(slot(0), _slot)


        let _bArray2Index := 1
        let _bArray2IndexAddress := mload(add(_slot, 0x20))
        let _bArray2IndexSize := mload(_slot)
        returndatacopy(gas, _bArray2IndexAddress, 32)
        revert(add(gas, 40), _bArray2Index, _bArray2IndexSize)
    }
}
