pragma solidity ^0.8.0;
contract Equivalent {
        function sum(uint x) override public pure returns (uint256) {
          return (x==0)? 0 : x+sum(x-1);
        }
}
