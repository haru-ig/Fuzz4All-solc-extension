pragma solidity ^0.8.0;
contract MutatedStorage4 {
    constructor(uint a) {
        assert(a >= 2 && a <= 100);
    }

    uint b = 20;
    uint c;
    constructor(uint a) {
        b += 1;
        c = a;
    }
    struct Foo {
        uint d;
    }
    mapping(uint => Foo) public storage_;
    function update() public payable
      {
        assert(msg.data.length == 25);
        Foo local = storage_[c];
        assert(b == b + 1);
        c = c + 1;
        local.d -= b;
    }
}
