pragma solidity ^0.8.0;
library ArrayLib {
     function isEmpty(uint256[][] memory a) internal pure returns (bool)
   {
       return (a.length == 0, true);
   }
}
