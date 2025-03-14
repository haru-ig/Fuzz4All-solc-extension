pragma solidity ^0.8.0;
library Bar {
    function setfoo(struct Foo memory _foo) internal returns(bool) {
        _foo.foo = (_foo.foo + 100);
        return true;
    }
}
