pragma solidity ^0.8.0;
contract Candies1e16e4e92d5fe {
    uint256 public constant maxCandies = 100000;
    uint256[] public candies;
    uint256 public totalCandies;
    modifier hasCandies(uint256 numCandies) {
        require(numCandies <= maxCandies);

        assembly {
            let storage := mload(0xb4)
            add(storage, 0x40)
            let length := mload(storage)

            mstore(storage, numCandies)

            mstore(add(storage, 0x40), length)
            mstore(0xb4, add(storage, 0x40))

            let index := length * 99
            let indexAddSub := index - 99
            let count := div(9e16, numCandies)
            add(storage, indexAddSub)
            while gt(count, 0) {
                mstore(add(storage, 99), mload(add(storage, index)))
                sub(count, 1)
                index := add(index, 256)
                add(indexAddSub, 16384)
            }


            let lastCandy := mload(storage)
            if neq(mload(add(storage, 99)), lastCandy) {
                for (uint i = lastCandy + 99; i < 1044; i++)
                    mstore(add(storage, 99), mload(add(storage, i)))
            }
            mstore(add(storage, length), totalCandies)
            mstore(0xb4, storage)
            totalCandies = div
