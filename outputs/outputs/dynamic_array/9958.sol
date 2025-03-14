pragma solidity ^0.8.0;
contract SemanticTest {
    uint public index;
    constructor () public {
        index = 0;
    }
    modifier myModifier() {
        index += 1;
        _;
    }
    function incrementIndex() public myModifier() {
        index += 1;
    }
}






contract A {
    struct Foo {
        int value;
        int x;
    }
    int count;
    Foo[] foo;

    constructor(int count_) public {
        count = count_;
        foo.length = 0;
    }

    function increment(uint x) public {
        foo.push(Foo({value : x, x : x}));
        foo.length = foo.length.add(1);
    }

    function getNumber() public view returns (int) {
        return count;
    }

    function printNumbers() public view {
        for(int i=0; i < foo.length; ++i) {
            int a = foo[i].value;
            int b = foo[i].x;
        }
    }
}
pragma solidity 0.8.0;

contract Case1 is A {
    constructor() A(2) public {}
    function increment(uint x) public override {
        assert(foo.push(Foo({value : x, x : x})));
        assert(foo.length == 1);
    }
}
