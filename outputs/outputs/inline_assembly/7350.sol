pragma solidity ^0.8.0;
contract Mutations {
  function mutSemEq1() public view returns (uint256 x);
  function mutSemEq2() public returns (uint256 x, uint256 y);
  function mutSemEq3() public pure returns (uint256 x, uint256 y);
  function mutSemEq4() public pure returns (uint256 x, uint256 y, uint256 z);
  function mutSemEq5() public pure returns (uint256 x, uint256 y);
  function mutSemEq6() public pure returns (uint256 x, uint256 y, uint256 z);
  function mutSemEq7() public pure returns (uint256 x, uint256 y, uint256 z);
}

pragma solidity ^0.8.0;
contract Custom {
  function mutate_mutSemEq1(uint256 x) public view returns (uint256 x_new) {
    if (x!= constant1) {
      x_new = constant2;
    } else {
      x_new = constant3;
    }
    return x_new;
  }
}
contract Mutations_semanticallyEq {
  function mutate_mutSemEq2(uint256 x, uint256 y) public view returns (uint256 x_new) {
    return x + y;
  }
  function mutate_mutSemEq3(uint256 x, uint256 y) public pure returns (uint256 x_new) {
    return x + y;
  }
  function mutate_mutSemEq4(uint256 x, uint256 y, uint256 z) public pure returns (uint256 x_new) {
    return x + y + z;
  }
  function mutate_mutSemEq5(uint256 x, uint256 y) public pure returns (uint256 x_new) {
    return x + y;
  }
  function mutate_mutSemEq6(uint25
