pragma solidity ^0.8.0;
contract Solidity {
    struct Struct1 { string foo; }
    modifier fooBarModifier() {
        return;
    }
}

pragma solidity ^0.8.0;
contract Solidity {
    modifier fooBarModifier() {
        return;
    }

    function f(Mapping storage x) public fooBarModifier {
      x[1] = 3.0;
      x[0].func();
    }
    function g() public fooBarModifier {
        test();
    }
    function test() public {
        Struct1 storage s = [Struct1(1)];
        (bool valid, ) = s.func();
        assert(valid);
    }
}
