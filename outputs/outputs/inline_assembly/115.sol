pragma solidity ^0.8.0;
library L {
    struct A {
        uint _a;
    }
}
contract B {
    function createInstance(address _to) public returns (A memory) {
     return (A({}));
     return L.A({_a: 1});
    }
}
contract C {
    uint8 public i;
    constructor() {
    i = 1;
    }
}
contract E {
    contract A {
        function b() public view returns (uint) {
        return i;
    }
    }
    contract B {
        A a;
        constructor() public {
        a = A();
        }
    }
    function test() public {
    B b;

    uint v;
    assembly {
    v := a.b()
    }
    }
}
