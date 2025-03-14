pragma solidity ^0.8.0;
contract Mutant
{
  mapping (address => address) internal a;
  constructor() {
    a[0x20000000000000000000000000000000000000000] = address(0x00000000000000000000000000000000000000);
  }
}



pragma solidity ^0.8.0;

library SafeMath {

    function tryAdd(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            uint256 c = a + b;
            if (c < a) return (false, 0);
            return (true, c);
        }
    }


    function trySub(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b > a) return (false, 0);
            uint256 c = a - b;
            return (true, c);
        }
    }


    function tryMul(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {


            uint256 c = a * b;
            if (c / a!= b) return (false, 0);
            return (true, c);
        }
    }


    function tryDiv(uint256 a, uint256 b) internal pure returns (bool, uint256) {
        unchecked {
            if (b == 0) return (false, 0);
            uint256 c = a / b;
            return (true, c);
        }
    }


    function tryMod(uint256 a, uint256 b) internal pure returns (bool, uint256) {
