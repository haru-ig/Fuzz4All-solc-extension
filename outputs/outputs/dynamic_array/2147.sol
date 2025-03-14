pragma solidity ^0.8.0;
contract SemanticEquivalence_ArrayAssignment_1 {
    function test(uint x)
        public pure returns (uint)
    {
        return x;
    }
}
contract SemanticEquivalence_ArrayAssignment_2 {
    function test(uint x)
        public pure returns (address)
    {
        return address(0);
    }
}
contract SemanticEquivalence_ArrayAssignment_3 {
    function test(uint x)
        public pure returns (uint8)
    {
        return 0xFF;
    }
}
contract SemanticEquivalence_ArrayAssignment_4 {
    function test(address x)
        public pure returns (uint8)
    {
        return 0xFF;
    }
}
contract SemanticEquivalence_ArrayAssignment_5 {
    function test(address x)
        public pure returns (address)
    {
        return address(0);
    }
}
contract SemanticEquivalence_ArrayAssignment_6 {
    function test(uint x)
        public pure returns (uint)
    {
        uint[] memory data = new uint[](x);
        return 0;
    }
}
contract SemanticEquivalence_ArrayLengthAssignment {
    function test(bool[] memory z)
        public pure returns (uint)
    {
        return z.length;
    }
}
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment {
    function test() public pure returns (bool) {
        return true;
    }
}

pragma solidity ^0.6.12;
interface C {
    function f() public view returns (uint);
}
contract A {
    uint data;

    mapping(string => C) map;

    function getValue() public view returns (uint) {
        return data;
    }

    function write(uint w) public {
        map["w"] = new C();

        data = w;
    }

    function read() public view returns (uint) {
        return getValue();
    }

    function setValue(uint x) public {
        map["w"] = new C();

        data = x;
    }

    function update() public view returns (uint) {
        map["w"].f();
        return getValue();
    }

    function readUpdate() public view returns (uint) {
        map["w"].f();
        return getValue();
    }
}
/** In this contract we can use the mapping capability of Solidity to store state data as an array of type address. They can also be read from within a contract without relying on external state storage. This allows us to store a single address value with contract state being the
