pragma solidity ^0.8.0;
contract SemanticSimilar4_Modifier {
    uint256 v;
   function f() public {
       assembly {


        storageSlot := 1

        mstore(32)

        value := mload(32)

        if nonzero(value) {

            v := mload(32)

            fall(mload(32))
        } else {

          v := 5
        }
       }
    }
}

pragma solidity ^0.8.0;
contract Caller{
  function value() public payable virtual returns (uint256) {return 0;}
  fallback() payable {}
}
