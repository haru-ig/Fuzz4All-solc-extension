pragma solidity ^0.8.0;
contract Mutater {
    function mutatedFunction(int a, int b) public {
        require(a > b, "One cannot be greater than the other");
        int localA = a;
        int localB = b;
        localA += localB;
    }
    function mutatedFunction(bytes memory b, bytes memory c) public {
        require(b.length > c.length, "One cannot be greater than the other");
        bytes memory localB = b;
        bytes memory localC = c;
        localC += localB;
    }
}
contract Mutater11 {
    event MyEvent(uint a);
    uint internal _value;
    function mutatedFunction(uint a) public payable {
        _value = a;
        emit MyEvent(a);
        mutatedFunctionImpl(a);
    }
    function mutatedFunction(uint a, uint b) public {
        _value = a;
        emit MyEvent(a);
        a += b;
        mutatedFunctionImpl(a, b);
    }
    function mutatedFunction(bytes memory b, bytes memory c, bytes memory d) public {
        _value = b.length;
        emit MyEvent(b.length);
        bytes memory localB = b;
        bytes memory localC = c;
        bytes memory localD = d;
        localD += c.toBytes32();
        localB += c.toBytes32();
        b += c;
        b += d;
        b += d.toBytes32();
        c += d.toBytes32();
        c.fromBytes32(d.toBytes32());
        c.fromBytes32(d.toBytes32());
    }
    function mutatedFunction(bytes32 b1, bytes32 b2, bytes32 b3, bytes32 b4, bytes32 b5) public {
        _value = b1.length;
        emit MyEvent(b1.length);
        bytes32 localB1 = b1;
        bytes32 localB2 = b2;
        bytes32 localB3 = b3;
        bytes32 localB4 = b4;
        bytes32 localB5 = b5;
        localB1 += c.fromBytes32(d.toBytes32());
        localB2.fromBytes32(d.toBytes32());
        localB3 += c.fromBytes32(d.toBytes32());
        localB4.fromBytes32(d.toBytes32());
        b1.fromBytes32(d.toBytes32());
        b1.fromBytes32(d.toBytes32());
        b2 += c;
        b3 += d;
        b4.fromBytes32
