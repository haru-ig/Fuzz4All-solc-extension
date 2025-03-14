pragma solidity ^0.8.0;
contract Baz1 is Baz2 {
    function Bar() internal { }
    function Bar2() public returns (uint8 witnessReturn) {
        a = msg.sender;
        return true;
        (uint256 x, uint, bool) = abi.decode(msg.data, (uint256, uint, bool));
        return require(!bool(x == 100), "foo");
    }
}
contract Baz is Baz1 {
    function Foo(uint witnessReturn) internal { }
}
