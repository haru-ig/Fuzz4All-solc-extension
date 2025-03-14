pragma solidity ^0.8.0;
contract MutatedStorage {
    constructor(uint a) {
        assert(a > 1 && a < 100);
    }

    struct Foo {
        uint a;
    }

    mapping(uint => Foo) public storage_;

    function update(uint a) public {
        storage_[a] = Foo(a);
    }
}
