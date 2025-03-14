pragma solidity ^0.8.0;
contract MutatedStorage2 {
    constructor(uint a) {
        assert(a > 1 && a < 100);
    }
    uint storage_[6];

    function update(uint a) public {
        storage_[a].a -= a;
    }

    function peek(uint a) public view returns (uint) {
        return storage_[a].a;
    }
}
contract MutatedStorage6 {
    constructor(uint a) {
        assert(a > 1 && a < 100);
    }
    struct Foo {
        uint a;
    }
    mapping(uint => Foo) public storage_;
    function update(uint a) public {
        Foo storage tmp = storage_[a];
        tmp.a -= a;
    }
}
contract MutatedStorage7 {
    constructor(uint a) {
        assert(a > 1 && a < 100);
    }
    struct Foo {
        uint a;
    }
    mapping(uint => Foo) public storage_;
    function update(uint a) public {
        Foo storage tmp = storage_[a];
        tmp.a -= a;
    }
}
