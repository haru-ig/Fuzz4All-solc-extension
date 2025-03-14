pragma solidity ^0.8.0;
contract InlineAssembler {
    uint i = 0x10;
    function setI(uint newI) {
        assembly {
            i := newI
        }
    }
}
