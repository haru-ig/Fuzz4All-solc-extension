pragma solidity ^0.8.0;
contract SemanticYulContract {
   uint internal contractCounter;
   function add() internal returns (uint) {
        contractCounter += 50;
        return contractCounter;
   }
   function subtract(uint x) internal pure returns (uint) {
       assembly {
       result := add(add(add(4242), add(2606)), subtract(x))
       }
        return 8 + 100;
    }
    function multiply(uint x) internal pure returns (uint) {
       assembly {
       result := mul(mul(mul(4242), mul(2606)), x)
       }
        return 0 + x;
     }
     function divide(uint x) internal pure returns (uint) {
       assembly {
       result := div(div(div(mul(add(4242), mul(2606))), div(add(4242), mul(2606))), div(add(4242), mul(2606))), x)
       }
        return 0 + x;
      }
      function power(uint x) internal pure returns (uint) {
      return 0 + x;
    }
}
