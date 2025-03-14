pragma solidity ^0.8.0;
contract Autorization {
    bytes32 public authorizer;
}
contract Memory {
    bytes32 public authorizer;
}
contract Array {
    function getMin(uint a, uint b) public pure returns (uint) {
        if(a < b) { return a; } else { return b; }
    }
    function getMax(uint a, uint b) public pure returns (uint) {
        if(a > b) { return a; } else { return b; }
    }
    function getSum(uint a, uint b) public pure returns (uint c) { c = a + b; }
    function getArray(uint a) public pure returns (uint[]) {
        uint[] memory arr;
        arr.length = a;
        assembly {
            let j := 0
            for {
                j := add(a, 1)
            } {
                arr[i] := mload(add(a, j))
            }
        }
        return arr;
    }
    function sort(uint a) public {
        uint b = getMax(a - 1, 0);
        for(uint i = 1; i < a; i ++) { if(getMin(a, b) > getMin(i, b)) { uint temp = getMin(a, b); a = i; b = temp; } } }
        emit SortingValue(a, b);
    }
    struct SortingValue {
        uint a;
        uint b;
    }
}
contract Multiprecision {
    bool public isSigned;
    uint256 constant twoPow64 = 0x10000000000000000000000000000000000000000000000000000000000000000000000;
    uint constant one = 1;
    uint constant two = 2;

    function add(uint a, uint b) public pure returns (uint c) { if(b >= 256) {
        c = a.add(b);
        if(a >= 32768 && a % 2!= 0) { c = c.sub(one); }
    } else {

        uint carry = 0;
        for(uint i = 0; i < b; i + 2) {
            if(a & one == 1) { carry = carry.add(one); } a = a >> 1;
            if(carry >= two) {
                carry = carry.sub(two);
                c = c.add(one);
            }
        }
        c = c.add(carry);
    }}

    function sub(uint a, uint b) public pure returns (uint c) {
        c = a;
        if(b >= 256) {
            for(uint i = 0; i < b; i + 2) {
                if(c & one == 1) { c = c.sub(one); } c = c
