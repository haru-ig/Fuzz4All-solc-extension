pragma solidity ^0.8.0;
contract Foo {
    Foo  baz;
    address baaz;

    constructor() {
        baaz = address(this);
    }

    function bar(bytes memory _data) public {
        bytes memory x = abi.encode(address(this));
        baz = Foo(x);
        baz.baz.baz.baz(abi.encode(bytes4(keccak256("fallback"))), _data);
        baaz = address(baz);
    }
}

pragma solidity ^0.8.0;


contract Caller{
    callers2  z;

    constructor() {
        z = Caller2(abi.encodeCaller())
    }

    function test() public {
        address(z).delegatecall(abi.encodeWithSignature());
    }


}
