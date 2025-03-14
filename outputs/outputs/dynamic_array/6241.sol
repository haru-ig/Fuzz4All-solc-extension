pragma solidity ^0.8.0;


interface I0 {
    struct S {
        uint256 x;
    }

    function foo0() external returns (S x);
}
pragma solidity ^0.8.0;

mapping (address => I0) store;

contract D0 {

    function f0(address key) public {
        address a = store[key];
        store[a] = I0(I0.S(0));
    }

}
pragma solidity ^0.8.0;

interface I1 {
    struct S {
        uint256 x;
        uint256 y;
    }

    function foo1() external returns (S x);
}
pragma solidity ^0.8.0;

contract D1 {

    struct S {
        uint256 x;
        uint256 y;
    }

    address[] public arr;

    function f1(uint z) public {
        S memory m;
        m.x = 9;
        m.y = z;
        store[keccak256(abi.encodePacked("0x", arr[0]))] = I1(m);
    }

}
pragma solidity ^0.8.0;

interface I2 {
    struct S {
        uint256 x;
        uint256 y;
        uint256 z;
    }

    function foo2(uint b, uint c) external returns (S x1);
    function foo3(bytes memory data) external returns (uint x1);
    function foo7(bytes memory data) public pure;
    function foo9() public;
    event E(uint x1, bytes memory data);

    function f2(uint y, uint z) public returns (uint x2);
}
pragma solidity ^0.8.0;

contract D2 {

    struct S {
      uint256 x;
      uint256 y;
    }

    uint[] public arr;
    bytes[] internal s;
    uint x;
    uint y;

    function f2(uint z, uint x) public returns (uint x2) {
        x2 = x^x;
        x = x + 10;
        S memory m1;
        m1.x = x;
        m1.y = x;
        arr.push(x);
      }

    function f3(uint a, uint b) public returns (uint i) {
        uint x = a^b^a;
      }

    function f4() public returns (uint, uint [3]) {
        S memory s1;
        s1.x = x;
        s1.y = 0;
        s1.z = 1;
        s.push(abi.encode(s1
