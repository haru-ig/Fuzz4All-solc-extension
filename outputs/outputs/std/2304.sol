pragma solidity ^0.8.0;


pragma solidity ^0.8.0;
contract SafeMath {

    function max(uint16 a, uint16 b) internal pure returns (uint16) {
        return a < b? b : a;
    }

    function min(uint16 a, uint16 b) internal pure returns (uint16) {
        return a < b? a : b;
    }
}
