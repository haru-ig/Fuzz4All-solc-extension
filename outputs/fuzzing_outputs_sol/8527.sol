pragma solidity ^0.8.0;
contract CallerExample12 {
   function subtract(uint x, uint y) public pure returns (uint z) {
        return y - subtract(x, y);
   }
}
