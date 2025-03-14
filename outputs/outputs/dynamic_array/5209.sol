pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint32[][][] a;
    }
    function f() public pure returns (A memory) {
        A memory a;
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.a.push(a);
        return a;
    }
}

contract Test36 {
    A a;
    function f() public pure returns (A memory) {
        a.a[0] = a.a;
        return a;
    }
    function g() public pure returns (A memory) {
        a.a.length = 10;
        return a;
    }
}

pragma solidity 0.8.0;
contract Test37 {
    function f(uint a) pure external returns (uint) {
        if (a < 10) {
            return 20;
        }
        return 30;
    }
    function g(uint[] memory array) public pure returns (uint) {
        require(array.length == 256);
        uint result = uint();
        for (uint i = 0; i < 10; i = i + 1) {
            assembly {
                result := result + mload(add(array, 0x20, i*0x20))
            }
        }
        return result;
    }
}

pragma solidity 0.8.0;
contract Test38 {
    function f(uint start, uint end) pure external returns (uint) {
        uint count = 0;
    }
    function g(
