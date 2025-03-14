pragma solidity ^0.8.0;
contract Insurance extends Mutator("Insure") {
  constructor() {
    setNumber(0, 1);
    setNumber(1, 200);
    setNumber(2, 10000);
    setNumber(3, 13);
  }
}
