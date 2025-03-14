pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample36 {
    uint public i;
    address public j;
    uint public k;
    address public v;
    function increaseByOneAndTen(uint d) public {
        i = i + 1;
        j = address(uint2ptr(i));
        k = k + 10;
    }
    function increaseByTenAnd10(uint b) public {
        v = address(uint2ptr(k));
        k = k + 20;
    }
    function increaseByTenAnd20(uint a) public {
        address v_new = address(uint2ptr(k));
        v = v_new;
        k = v + k;
    }
    function increaseBy100And20(uint j) public {
        k = j + k;
    }
    function increaseBy100And10(uint w) public {
        k = w + k;
    }
    function increaseBy5000And20(uint c) public {
        k = c + k;
    }
}

pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample37 {
    uint public i;
    uint public j;
    uint public k;
    uint8 public value;
    function increaseByOneAndTen1() internal pure {
        i = i + 1;
    }
    function increaseByTenAnd102() internal pure {
        value = 100;
        k = k + 10;
    }
    function increaseByTenAnd103() internal pure {

        k = address(uint2ptr(i)) + k;
    }
    function increaseBy100And
