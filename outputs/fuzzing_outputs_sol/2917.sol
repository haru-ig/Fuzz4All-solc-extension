pragma solidity ^0.8.0;
contract Bar {
    function baz () public returns (uint32) {
        return 0;
    }
}
contract Foo {
    function foo(string memory) public {
        require(bar().baz() == 0);
        assembly {
            mstore(0x00, mload(0x00))
        }
    }
    function bar() public pure returns(Bar) {
        return Bar();
    }
}
