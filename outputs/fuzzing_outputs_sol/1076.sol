pragma solidity ^0.8.0;
contract ContractMutated2Old {
    function func() public returns (uint256 count) {
      assembly {
        count := 9
      }
    }
}
