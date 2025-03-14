pragma solidity ^0.8.0;
contract B {
    uint[0] _array;
}
```

- When assigning a dynamic array to a varaible, the value can be updated in the assignment with the next `assign()` (or `call`) or `.push()` (or `.append()`). In this case, a value can be overwritten with the `push()` method after the array was declared. Example:
```solidity
pragma solidity ^0.8.0;
contract C {
    uint _array;
    mapping(uint => uint) _array2;

    function test() {
        uint[] memory empty;
        assert(_array.length == 0 && _array2[1] == 0);
        assert(empty.length == 0);

        _array.length = 2;
        assert(empty.length == 0);
        _array2[1] = 1;
        _array.length = 1;
        assert(_array.length == 2);
    }
}
```

## `pragma` - Preprocessing options
- `pragma experimental ABIEncoderV2` - The value is used to encode a variable size array which is not yet fully implemented [ABIEncoderV2](https:
- `pragma experimental SSZArray` - The value is used to encode a SSZ array. SSZ arrays of any size are created on the fly during the generation and can be accessd by index within a contract (either directly or via `storage()`).

## Important keywords
- `var` - A variable definition for a constant, variable, array or mapping in Solidity.
- `int` - 64-bit integer in Solidity with minimum value `-2**63` and maximum value `2**63 - 1`.
- `uint` - 64-bit unsigned integer in Solidity with minimum value 0 and maximum value `2**63 - 1`.
- `fixed` - Fixed width integer in Solidity that can take any value within a range.
- `address` - 20 bytes in Solidity.
- `bytes` - Byte strings containing variable size data.
- `bytes32` - 256-bit unsigned integers.
- `bool` - Boolean type as used to represent a truthy, falsey-or-nil value.
- `mapping` - Used to group several elements of different types.
- `struct` - Structures are used to define a set of named state variables and getters and mut
