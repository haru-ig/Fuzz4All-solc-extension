pragma solidity ^0.8.0;
contract Comp3 {
   mapping (uint64 => uint64) private _mapping;
   constructor (uint32 _a) {
        _mapping[_a] = 1;
    }

   function increase (uint32 _data) returns (uint32) {
        _mapping[_data] += 1;
   }

   uint32 public getValue(uint32 _data) public pure returns (uint32) {
        return _mapping[_data];
   }
}
library SafeMath {


    function add(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 c = a + b;
        require(c >= a, "SafeMath: addition overflow");

        return c;
    }



    function sub(uint256 a, uint256 b) internal pure returns (uint256) {
        return sub(a, b, "SafeMath: subtraction overflow");
    }



    function sub(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256) {
        require(b <= a, errorMessage);
        uint256 c = a - b;

        return c;
    }



    function mul(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        }

        uint256 c = a * b;
        require(c / a == b, "SafeMath: multiplication overflow");

        return c;
    }


}
