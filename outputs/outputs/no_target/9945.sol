pragma solidity ^0.8.0;
contract lessWidereRevert {
    function bar() {
        uint x = 0;
        assembly {
            x := mul(0x010000000000000000000000000000000000000000000000000000000000, x)
        }
    }
}
