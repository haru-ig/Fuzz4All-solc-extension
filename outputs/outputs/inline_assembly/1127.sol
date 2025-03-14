pragma solidity ^0.8.0;
modifier canModify() {
  _;
  uint currentX;
  assembly {

    currentX := x
  }
  if (x == currentX) {
    revert();
  }
}
constructor() public{
}
function() public pure {
  (x) {


    x++;
    uint x++;

    revert();

  }
}
*/
