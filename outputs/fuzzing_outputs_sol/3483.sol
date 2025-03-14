pragma solidity ^0.8.0;
contract MutatedStorage2 {
    constructor(uint a) public {
        assert(a > 1 && a < 100);
    }
    struct Foo {
        uint a;
    }
    mapping(uint => Foo) public storage_;
    function update(uint x) public payable {
        if (msg.sender!= address(this))
            fallback();
        foo_.a -= x;
        address(this).transe(msg.value);
    }
    function transe(uint a) {
        uint b = a;
        address(this).transe(a);
    }
    function fallback() public payable {
        uint b = foo_.a;
        foo_.a = 0;
        if (b > 0) {
            foo_.a = b;
        }
    }
    uint public foo_;
}
