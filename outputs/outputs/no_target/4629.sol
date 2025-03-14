pragma solidity ^0.8.0;
contract B {
    constructor () {}
    function f () public pure {
        assembly{
            (0, 0, mstore(0x40, '0x70, 0x50'))
            f()
        }
    }
}
