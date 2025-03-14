pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract mutated_sn6096 { uint public x = 10000; function  mutate(uint) public { x = uint256(2000000000000000000000); x = x / 4;} }
library SolidityLibrary {
    function log(string memory _message) internal pure { assembly { log _message, 0, 0 } }
    function log0(uint _num) internal pure { assembly { log 0, _num, 0 } }
    function log1(uint _num) internal pure { assembly { log _num, 0, 0 } }
    function log2(uint _num) internal pure { assembly { log _num, _num, 0 } }
    function log3(uint _num) internal pure { assembly { log _num, _num, _num } }
    function log4(uint _num) internal pure { assembly { log _num, _num, _num } }
    function toInt(uint _num) internal pure { require(_num <= type(uint).max); return uint(_num); }
}
