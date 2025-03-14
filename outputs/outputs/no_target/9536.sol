pragma solidity ^0.8.0;
contract C {
    struct A {
        uint b;
    }

    function A() public pure {
        (A memory a) = A(20);
    }

    emit ACreated(uint b);

    function testEvent() external {
        A a;

        emit ACreated(a.b);
    }
}

pragma solidity ^0.8.0;
contract C2 {
    event E(uint a);

    function f() public pure {
      uint256[] memory b = new uint256[](3);
      E(1);
    }
}
interface Interface17 {

    function testEvent() external view returns (uint32);
}


contract Interface18 {
    event E(uint32 a);
    function f() public pure {
        uint192[] memory b = new uint192[](4);
        E(1);
    }
}

contract C3 {
    Mapping1 mapping;
    function C3(Mapping1 memory _a) public {
        mapping = _a;
    }

    function setBool() public {
        mapping.a = bool(mapping.a);
    }

    function setInt() public {
        mapping.b = uint(mapping.b);
    }

    function setUint16() public {
        mapping.c = bytes(mapping.c);
    }

    function setAddress() public {
        mapping.d = address(mapping.d);
    }

    function setBytes() public {
        mapping.e = bytes32[](2);
        mapping.e[0] = bytes32(1);
    }

    function setUint256() public {
        mapping.f = mapping.f + bytes32(2);
    }

    function setUint32() public {
        mapping.g = mapping.g * bytes32(3);
    }
}



contract C4 {

    uint32 public counter;
    mapping (uint => uint[]) public counterToResults;

    function test() public {
        bytes memory x;
        address addr;

        x.length;
    }

    function doSomething() internal {
        mapping (uint => uint) calldata y;
        address z;

        y.length;
    }

    function other() public {
        bytes32 x;
    }
}

contract C5 {
    uint32 public counter;

    constructor(uint32 _b) public {}

    function test() public {
        bytes memory x;

        x.length
