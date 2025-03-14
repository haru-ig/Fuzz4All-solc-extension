pragma solidity ^0.8.0;
contract SemanticallyEquivalenty5 {
    function semanticallyEqual(address _a,address _b) public pure returns(bool) {
      return (msg.sender == _a) && (_b==_a);
    }
}
