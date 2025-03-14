pragma solidity ^0.8.0;
contract MutatedSemanticallyEquivalentAssemblyExample08 {
  struct Mutated {
      uint256 x;
      uint256 y;
    }
  function main() public pure {
      Mutated memory x;
      Mutated memory y;
      x.x=x.x-x.y;
      x.y=x.x-x.y;
      x.y=x.y-x.x;
      y.x=y.x-x.y;
      x.x=x.x-x.x;
      y.y=y.y-x.x;
  }
}
pragma solidity 0.8.0;

library InlineAssemblyLibrary {








    function runReturnVoid() public pure {
       assembly {
         let _result := _returnData

          revert(add(1, add(add(_result, 3), 2)))
       }
    }

    function runReturnUint256() public pure returns(uint) {
      assembly {
        let _result := _returnData
        return add(1, add(add(_result, 3), 2))
      }
    }

    function runReturn24() public pure returns(uint, uint256) {
      assembly {
        let _result := _returnData
        return add(1, add(add(_result, 3), 2))
      }
    }

    function runCopyTwoUint() public pure returns(uint, uint, uint) {
      address self;
      assembly {

        let a := add(self, 3)
        let b := add(a, 2)
        let c := add(b,
