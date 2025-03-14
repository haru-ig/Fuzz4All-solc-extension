pragma solidity ^0.8.0;
mapping (uint256 => uint8) mapping (uint256 => uint8) mapping (uint256 => uint8);
library Math { function modulo(uint a, uint b) internal pure returns(uint c) {c = a % b;} }

pragma solidity ^0.8.0;
import "Math.sol";
contract Test {
  uint x;
  function Test() public {
    if(x <= 0){
      while(x%3==0){
        x /= 3;
      }
    }
  }
}
