pragma solidity ^0.8.0;
contract Test17 {
    struct Foo {uint8[5] bar; uint8[5] foo; }
    function f(Foo memory) public {
        unchecked {
            foo = foo;
        }
        bar = bar;
    }
}
pragma solidity ^0.8.0;
contract Test20 {
    function setMyArray(uint8[4][5] memory x) public {
        unchecked {
            foo = x;
            bar = x;
        }
        bar = bar;
        this;
    }
}
pragma solidity ^0.8.0;
contract Test1 {
    struct User{uint8[5] foo;}
    mapping(address => User) public foo;
    function g() public {
        unchecked {
            foo[msg.sender].foo = foo[msg.sender].foo;
        }
    }
}
pragma solidity ^0.8.0;
contract Test130  {
    uint64[5] public foo;
    uint128[3] public bar;
    function f() public payable {
        unchecked {
            bar = bar;
        }
        foo = foo;
    }
}
