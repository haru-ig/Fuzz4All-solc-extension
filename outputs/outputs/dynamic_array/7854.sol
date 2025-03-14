pragma solidity ^0.8.0;
contract Test16SameAddressNested {
    address[] private _mem;
    function f() public {
        _mem[0] = 13;
    }
}
