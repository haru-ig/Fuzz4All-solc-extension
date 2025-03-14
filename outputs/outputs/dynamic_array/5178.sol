pragma solidity ^0.8.0;
contract Test35 {
    struct A {
        uint[2] array;
    }
    function f() public pure returns (A memory) {
        A memory a;
        a.array[0] = a.array[1];
        return a;
    }
    function g() public pure returns (A memory) {
        A memory a;
        a.array[1] = a.array[0];
        return a;
    }
}

contract Test37 {
	struct A {
        uint32[] array;
    }
    function f() public view returns (bool) {
        return array.length!= 0;
    }
    function g() public view returns (bool) {
        return array[0]!= array[1];
    }
}

contract Test53 {
    struct A {
        uint32[] array;
    }
    function f() public view returns (uint) {
        return array.length;
    }
    function g() public view returns (uint) {
        return array[2];
    }
}

contract Test55 {
    function test() public pure {
        uint32[] storage = new uint32[](3);
        storage[0] = 5;
        storage[1] = 2;
        storage[2] = 3;
        uint256 x = storage[0];
        uint256 y = storage[1];
    }
}
