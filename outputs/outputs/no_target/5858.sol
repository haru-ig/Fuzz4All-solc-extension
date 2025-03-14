pragma solidity ^0.8.0;
contract C9 {
    enum TestEnum {
        A,
        B,
        C,
        D,
        E
    }
    modifier restrictedTo(address account) {
        assert(x);
    }
    modifier nonReentrant() {
        assert(x);
        revert;
    }
    uint public constant x = 1;
}
