pragma solidity ^0.8.0;
contract Mutant_mutterered {


  function mutant() public {
    Mutant_old _original;
    Mutant_muttered _mutter = Mutant_mutterered(address(this));
    _mutter.replace_original();
    _original.mutate();
    _original.mutate().mutate()
  }

  function replace_original() public {
    Mutant_old _original = new Mutant_old();
    _original.original()
  }

  function original() public view returns (uint256 constant) {
    return constant1;
  }
}
