pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics4 {
    function f(uint8 arrSize_, uint8 arrSize1_) public returns (uint8[]) {
        uint8[] memory arr = new uint8[](arrSize_);
        uint8[2] MemoryMemorySize = [arrSize_, arrSize1_];
        uint256 MemoryAddress = address(MemoryMemorySize);
        emit Emit0(arr);
        emit Emit1(arrSize_);
        emit Emit2(8);
        emit Emit3(255);
        emit Emit0(arr);
        emit Emit1(arrSize_);
        emit Emit2(8);
        emit Emit3(255);
        return arr;
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

    function div(uint256 a, uint256 b) internal pure returns (uint256) {
      return div(a, b, "SafeMath: division by zero");
    }

    function div(uint256 a, uint256 b, string memory errorMessage) internal pure returns (uint256
