pragma solidity ^0.8.0;
contract C6 {
    enum Foo {
        First, Second
    }
mapping (Foo => uint256) internal b;
    constructor() public {
        b[Foo.Second] = 20;
    }
    function setInt(Foo foo, uint256 value) public {
        if(b[foo]!= value) revert();
        b[foo] = value;
    }
    function setInt2(Foo foo, uint256 value) public {

        if(value!= b[foo]) revert();

        b[foo] = value;
    }

    function setInt3(Foo foo, uint256 value) public {

        if(foo!= b[foo]) revert();

        if(b[foo]!= value) revert();

        b[foo] = value;
    }
}

pragma solidity ^0.8.0;
contract C7 {
    enum Foo {
        First, Second
    }
mapping (Foo => uint256) internal b;
    constructor() public {
        b[Foo.Second] = 20;
    }
    function setInt(Foo foo, uint256 value) public {
        uint256 value2 = value + 1;
        b[foo] = value2;
    }
    function setInt2(Foo foo, uint256 value) public {

        if(value!= b[foo]) revert();

        b[foo] = value;
    }
}
