pragma solidity ^0.8.0;
contract SemanticEquivalence_NestedDynamicallySizedNestedArrayAssignment_34{
    uint[] public a;
    uint[] public b;
    uint[] public c;
    function testFunction() public{
        a = new uint[](1);
        b = new uint[](2);
        c = new uint[1];
        b[2]=0x00;
        a[0] = _valueToUint31();
        a[1] = _valueToUint31();
        a[2] = _valueToUint31();
        b[0] = _valueToUint31();
        b[1] = _valueToUint31();
        c[0] = _valueToUint31();
        mappings["addr"] = new uint[](3);
        mappings["addr"][0] = a;
        mappings["addr"][1] = b;
        mappings["addr"][2] = c;
        mappings["addr"][0].push(0x00);
        mappings["addr"][0].push(0x00);
        mappings["addr"][0].push(0x00);
        mappings["addr"][1].push(0x00);
        mappings["addr"][1].push(0x00);
        mappings["addr"][1].push(0x00);
        mappings["addr"][2].push(0x00);
        mappings["addr"][2].push(0x00);
        mappings["addr"][2].push(0x00);
    }

    function _valueToUint31() public pure returns(uint31) {
        return uint31(1);
    }
}
