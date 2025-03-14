pragma solidity ^0.8.0;
contract Foo2 is Bar {
    fallback () external {
        uint32 x = 0;
    }
}
