pragma solidity ^0.8.0;
contract Test19 {
    uint256[3] public _mem;
    uint256 public length = 0;
    function f() public {
        unchecked {
            _mem[0] = 13;
            _mem[1] = 21;
            _mem[2] = 29;
        }
    }
}
