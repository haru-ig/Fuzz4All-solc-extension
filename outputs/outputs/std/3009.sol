pragma solidity ^0.8.0;
contract ArrayMutations {
    constructor(uint[] memory numbers) {
        swap(numbers[0], numbers.length-1);
    }
    function swap(uint x, uint y) private initializer{
        bytes32 temp;
        (temp,) = Address.functionCall(keccak256('swap(uint256,uint256)'), address(this), (x, y));
        unchecked {
            bytes memory tmp = temp.bytes;
            assembly {
                mstore(temp, mload(tmp))
            }
        }
    }
}
