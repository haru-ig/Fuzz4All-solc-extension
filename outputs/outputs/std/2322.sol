pragma solidity ^0.8.0;
contract SafeMathOld {
    function max(uint16 a, uint16 b) internal pure pure returns (uint16) {
        return (a < b)? (b) : (a);
    }
    function min(uint16 a, uint16 b) internal pure pure returns (uint16) {
        return (a < b)? (a) : (b);
    }
    function setValue(uint16 v) public {
        if(v > value) value = v;
    }
}
