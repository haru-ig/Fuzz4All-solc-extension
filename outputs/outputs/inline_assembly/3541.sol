pragma solidity ^0.8.0;
contract ChangeSemanticsUsingYulWithSemantics {
  address constant ZERO = address(0);
  address constant ONE = address(1);
  address constant TWO = address(2);
  contract OwnedContract {
      address public owner;
      constructor () {
          owner = msg.sender;
      }
  }

  contract ChangeSemanticsUsingYulWithoutSemantics is OwnedContract {
    address constant ZERO = address(0);
    address constant ONE = address(1);
    address constant TWO = address(2);
function change1 (address a) public {
      a = ONE;
      a = ONE;
      a = ONE;
      a = TWO;
      a = TWO;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
      a = ONE;
}
function change9 (address a) public {
      a = ZERO;
      a = ONE;
      a = TWO;
      a = ONE;
      a = TWO;
      a = ONE;
      a = TWO;
      a = ZERO;
      a = ONE;
      a = TWO;
      a = ZERO;
      a = ONE;
      a = ZERO;
      a = ONE;
      a = ZERO;
      a = ONE;
      a = ZERO;
      a
