pragma solidity ^0.8.0;
contract Test18Nested {
    uint[3] private _mem;
    function f() public {
        _mem[0] = 13;
        _mem[1] = 17;
    }
}
pragma solidity ^0.5.0;
