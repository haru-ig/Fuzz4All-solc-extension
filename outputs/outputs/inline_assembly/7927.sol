pragma solidity ^0.8.0;
contract L74 {
    bytes2 b;
    struct X {
        uint x;
    }
    function sneaky() public {
        if (b == bytes(uint8(1))) {
            X memory old;
            old.x = x;
            x = old.x;
        }
    }
}
