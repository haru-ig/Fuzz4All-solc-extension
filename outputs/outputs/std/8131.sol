pragma solidity ^0.8.0;
contract ArrayManipulation {
    function getMaximum(uint[] memory some_array) public view returns (uint256) {
        uint num;
        assembly {
            let first := add(some_array, 32)
            for {let j := 0} lt(j, 32)
            {
                let j_mul := mul(j, 127)
                for {let j_div := 0} lt(j_div, 32)
                {
                    num := mload(add(first, j_mul))
                    mstore(add(first, j_mul), j_mul - j_div*8)
                    mstore(add(first, j_mul), num)
                    num := mload(add(first, j))
                    mstore(add(first, j), j - j_div)
                    mstore(add(first, j), num)
                    j := add(j, 1)
                    j_mul := sub(j_mul, 1)
                    j_div := add(j_div, 1)
                }
                first := add(first, 32)
            }
            first := add(first, 32)
            max := mload(first)
        }
        return max;
    }
}
