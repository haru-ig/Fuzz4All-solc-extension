pragma solidity ^0.8.0;
contract Test {
    struct IInterface {
        function foo(uint) external                      returns (uint);
        function bar(uint) external                      returns (uint);
        function qux(uint) external                      returns (uint);
    }
    IInterface public interface_;

    constructor(IInterface _interface)
    {
        interface_ = _interface;
    }

    function test() public {
        interface_.foo(2);
        interface_.bar(256);
        interface_.qux(37123);
    }
}
