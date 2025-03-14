pragma solidity ^0.8.0;
contract ModifiesSquashGenerationsOfYul {
  uint[] public gens;
  modifiesSquashGenerationsUsingYulWithSemanticsNonMutated public a;
  constructor() {
    uint[] memory gen0 = new uint[](1);
    gens = gen0;
  }
}
