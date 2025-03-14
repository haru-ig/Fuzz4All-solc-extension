pragma solidity ^0.8.0;
contract MutatedStorage {
    constructor(uint a, mapping(uint => uint) storage) {
        storage_ = a;
    }
    struct Foo { uint a; }
    mapping(uint => Foo) public storage_;
    function update(uint a) public {
        storage_[a] = Foo(a);
    }
}
contract Contract {
    constructor (address _a) {}
    function test() public {
        mutates();
        calls();
    }
    function mutates() internal {
        storage_.update(10);
    }
    function calls() public view returns (uint) {
        return storage_.update(10);
    }
}
