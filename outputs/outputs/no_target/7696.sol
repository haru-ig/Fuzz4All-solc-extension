pragma solidity ^0.8.0;
contract Bar {
    using Foo for Foo.barmut;
    function call() public pure returns (uint) {
        return 0;
    }
}
contract C {
     function f() public {

        uint x = foo.bar(4);
    }
    function g() public {
        uint x = foo.barmut(4);
        foo.barmut(4);
    }
}
