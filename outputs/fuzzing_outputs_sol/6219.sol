pragma solidity ^0.8.0;
contract Mutant2 {
    function normalCall() internal pure {
    }
    function externalCall() external pure returns (bool) {
        return (address(this)!= 0x0);
    }
    function internalCall() public pure {
    }
}
pragma solidity ^0.8.4;
contract Dummy {
     uint amount;
  fallback () internal {
     amount += 1;
   }
  receive () external payable {}
  function () external payable {}
}
