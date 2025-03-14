pragma solidity ^0.8.0;
contract Solidity7To1 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 3;
        b = 4;
        maxA = 1;
    }
    fallback() external payable {
        a = a - 1;
    }

    modifier checkSize(uint8 _count) {
        if (a < maxA) {
           a+=(1*_count);
        } else {
           revert();
        }
        b+=(1*_count);
        maxA+=(1*_count);
        break;
    }
}
contract Solidity0To7 {
    uint8 public a;
    uint8 public b;
    uint8 public maxA;
    constructor() public {
        a = 3;
        b = 4;
        maxA = 1;
    }
    fallback() external payable {
        a = a - 1;
        b = b - 3;
        maxA = maxA - 1;
    }

    modifier checkSize(uint8 _count) {
        if (a < maxA) {
           a+=_count;
        } else {
           revert();
        }
        b+=(1*_count);
        maxA+=_count;
        break;
    }
}
contract StaticArraysVsDynamicArraysVsNestedStructuresVsDynamicCalldata {
    uint8[5] dArray1;
    uint8[3] dArray2;
    enum Color {Green, Orange, Red, Yellow, NearOcean}
    struct Vertex {uint8 x; uint8 y} xCoord;
    enum Shape {Triangle, Square}
    struct Edge {uint8 start; uint8 end; uint8 index; Color color; Shape shape;}
    Color[3] colors;
    uint256[] sizes;
    uint8[][] coords;
    mapping (Address => int8) balances;
    address[] myAddress;
    int8[] myInt;
    bytes10[4] bytes10Data;
    bytes32[3] bytes32Data;
    Vertex[] v;
    Edge[] e;
    mapping(address => int256) my1;
    mapping(address => uint256) my2;
    function() public {
        balances[msg.sender] = balances[msg.sender] -
