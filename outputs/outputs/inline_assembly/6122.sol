pragma solidity ^0.8.0;
contract NonMutatedSemanticallyEquivalentAssemblyExample23 {
    using InlineAssembly for bytes4;
    struct NonMutated {
        uint256 x;
        uint256 y;
    }
    function main() public pure {
      bytes32 _target = type(NonMutated).selector;
      assembly {
        calldatacopy(0, 0, calldatasize)
        let result := call($target, 0, calldatasize)
        let data := mload(0)
        x := x + data
        x := x + data * 2
        x := x + data * 3 + data
        x := x + data * 2 + 3 * data
        x := x + x
      }
      emit emitToEvm({msg: 'nonmutated', result_value: nonmutated(x.y)})
    }

    function nonmutated(uint256 constant _x) public pure {
      return _x;
      }
}
