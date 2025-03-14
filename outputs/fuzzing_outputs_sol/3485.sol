pragma solidity ^0.8.0;
contract MutatedStorage2 {
    struct Foo {
        uint x;
    }
    mapping(uint => Foo) public storage_;
    constructor(uint x) {
        assert(x >= 1 && x <= 100);
    }
    function update(uint x) public {
        assert(x == x + 1);
        storage_[x].x -= x;
    }
}

pragma solidity ^0.8.0;
contract MutatedStorage {
    struct Foo {
        uint x;
    }
    Foo public storage_;
    constructor(uint x, uint y) {
        assert(x == x + y * 10);
        storage_.x = x;
    }
    function foo() public {
        uint x = storage_.x * 10;
        storage_.x = x - 10 * 10;
        assert(x == 1);
    }
}

pragma solidity ^0.8.0;
contract MutatedStorage {
    uint public x;
    constructor(uint x_) {
        x = x_;
    }
    function increment() public {
        uint z;
        z = x;
        z = z + 100;
        x = z;
    }
    function incrementBy(uint e) public pure returns (uint) {
        uint z;
        z = x;
        z = z + e;
        x = z;
        return z;
    }
}

pragma solidity ^0.8.0;
contract MutatedStorage {
    uint public x;
    constructor(uint x_) {
        x = x_;
    }
    function increment() public {
        uint z;
        z = x;
        z = z + 100;
        x = z;
    }
    function incrementBy(uint e) public pure returns (uint) {
        uint z;
        z = x;
        z = z + e;
        x = z;
        return z;
    }
}
