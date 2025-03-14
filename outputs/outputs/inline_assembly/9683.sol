pragma solidity ^0.8.0;
contract SemanticYulContract {
 uint internal contractCounter;
 uint const c = 50;
   function subtract(uint x) internal pure returns (uint)
        {
         if (x < 120)
            {
             return 4 * c * c * c * c * x * c;
            }
            else if (x < 10 * 10 * 10 * 10 * 10 *10*10)
              {
               return 1000 * c * x * c;
              }
            else
            {
             return c * c * x * c * c * 8;
            }
        }
   function power(uint x) internal pure returns (uint)
        {
         if (x < 120)
            {
             return 4 * c * c * c * c * x * c;
            }
            else if (x < 10 * 10 * 10 * 10 * 10 * 10 * 10)
                {
                 return 1000 * c * x * c;
                }
            else
            {
             return c * c * x * c * c * 8;
            }
        }
   function addBy(uint x) internal {
     uint temp = c * 10 * 10 * 10 * 10 * 10 * 5 * x + x * 5 * 5 * c + 5;
     contractCounter += c * temp;
   }
}
