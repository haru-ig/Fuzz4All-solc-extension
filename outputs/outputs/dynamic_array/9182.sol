pragma solidity ^0.8.0;
contract Emitted {
    function get_emit_event_return_value()
    public
    emit
    returns (uint[] memory)
    {
        uint[] memory out_data = [1,7,9];
        return out_data;
    }
}
```

<br><br>

- **Compiler bugs**

    Solidity's dynamic array size checking is not robust. It can cause issues with the handling of arrays when the array is modified, such as if you use `push` (`push x`) or `push x` in `pop x`. Dynamic array size tracking can also lead to potential bugs, as described above.

    If your Solidity source contains nested dynamic array accesses (e.g., calling a function with a deep dynamic array), it is much more difficult to locate where they are being called from and why. For example, when the ABI encoding of the function's input uses dynamic array structures (such as `push [1,2]`), it is hard to find out where that is being called or why it is being called due to a bug. The contract's dynamic array check should thus be very carefully and thorough, with every possible access to the dynamic array.
