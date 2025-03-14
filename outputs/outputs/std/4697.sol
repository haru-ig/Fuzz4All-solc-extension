pragma solidity ^0.8.0;
contract A {
    A public A;
    function f() public {
        A.f1 = 2;
        A.f2 = 3;
        A.f3 = 4;
        A.f4 = 5;
        A.f5 = 6;
        A.f6 = 10;
        A.A.f7 = 11;
        A.A.f8 = 12;
        A.A.f8 = 20;
    }
}

pragma solidity ^0.8.0;
contract A {
    uint[] public arr = [1, 2, 3, 4, 5, 5, 6];
    uint[] public repeat;
    function f(uint[] memory x, uint[] memory y) public pure returns (uint[] memory) {
        uint[] memory mem = new uint[](x.length + y.length);
        for (uint i = 0; i < x.length; i++)
            for (uint j = 0; j < y.length; j++) mem[i + j] = x[i];
        return repeat = mem;
    }
    function g() public returns (uint[] memory y) {
        repeat = f(repeat, repeat);
        returny;
    }
}
