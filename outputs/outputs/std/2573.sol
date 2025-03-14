pragma solidity ^0.8.0;
contract ArrayArray
{
    uint[] a;
    function add(uint[] memory x, uint[] memory y) public pure returns(uint[] memory result) {
        output.push(x, y);
    }
}
pragma solidity ^0.8.0;
contract ArrayArrayCopy
{
    uint[] a;
    address[] b;
    function add(uint[] memory x, uint[] memory y) public pure returns(uint[] memory result) {
        uint[] memory z;
        assembly {
            let a_ptr := mload(add(x, a_slot))
            let b_ptr := mload(add(y, b_slot))
            let a_slot := add(a.slot, add(1, 32))
            let b_slot := add(b.slot, add(1, 32))
            let z_slot := add(z.slot, 32)
            mstore(z_slot, add(x_ptr, byte_slot))
            mstore(add(a_ptr, add(mul(sub(byte_slot, byte_slot), 32))), add(y_ptr, byte_slot))
            mstore(add(a_ptr, add(mul(sub(byte_slot, byte_slot), 32))), add(z_slot, byte_slot))
        }
        result.push(z);
    }
}
pragma solidity ^0.8.0;
contract ArrayArrayCopyCopy
{
    uint[] a;
    uint[][] b;
    function add(uint[] memory x, uint[] memory y) public pure returns(uint[] memory result) {
        uint[] memory z;
        assembly {
            let x_ptr := mload(add(x, a_slot))
            let y_ptr := mload(add(y, b_slot))
            let x_slot := add(x.slot, add(1, 32))
            let y_slot := add(y.slot, add(1, 32))
            let z_slot := add(z.slot, 32)
            mstore(z_slot, sub(byte_slot, mul(b_slot, popcnt(x_slot))))
            mstore(add(x_ptr, add(mul(sub(byte_slot, byte_slot), 32))), add(y_ptr, byte_slot))
            mstore(add(x_ptr, add(mul(sub(byte_slot, byte_slot), 32))), add(z_slot, byte_slot))
        }
        result.push(z);
    }
}
