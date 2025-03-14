pragma solidity ^0.8.0;
contract AWrapperInterface {
   function f(address t) external;
}
address[] addrs1;
address[] addrs2;
library L {
    function f(int) external;
    function g(address a) external {
        addrs1.push(a);
        addrs2.push(a);
    }
    function h(address a1, address a2) {
        addrs1.push(a1);
        addrs2.push(a2);
    }
}
contract A {
    int[3] public val;
    address[] internal empty;
    mapping(address => mapping(uint => int)) public mints;
    struct MyStruct {
        int a, b;
    }
    function f(AHolder aHolder) internal {
        addrs1.push(aHolder.addr() ^ aHolder.addr());
        L.g(aHolder.addr());
        L.h(aHolder.addr(), aHolder.addr());
        L.h(0x00, aHolder.addr());
    }
    function g() internal {
        empty.push(address(0));
        empty.push(address(MintsMapping(mints)));
        empty.push(address(new(uint256)));
    }
    function h() public {
        g();
        L.f(1);
        delete mints[address(50)][1];
        mints[address(20)][1] = 1;
        mints[address(40)][1] = -1;
    }
}
contract B is AWrapperInterface {
    constructor(uint a, uint[] memory b, uint c) {
    }
    function addr() public view returns (address) {
    }
}
contract C is CWrapperInterface {
    constructor(uint a, uint[] memory b, uint c) {
    }
    function addr() public view returns (address) {
    }
}
contract D is A {
}
