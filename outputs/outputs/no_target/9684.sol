pragma solidity ^0.8.0;
contract MutatedBug { uint myBalance; function Bug() public { unchecked { if (!(address(this).balance == 0xFFFFFFFFFFF)) { myBalance = 0; } } } }

event Bugger(address bugger);
contract SafeBug { function Bug() public {}
  function SafeBug(uint256 bla) public {
    new Bug();
    assert(bugger() == address(this));
    myMutatedBalance = bla;
    unchecked {
      if (!(address(this).balance == 0xFFFFFFFFFFF)) {
        revert();
      }
    }
  }
  function bugger() internal pure returns (address) {
    return address(new MutatedBug());
  }
}
