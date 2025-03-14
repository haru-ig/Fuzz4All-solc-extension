pragma solidity ^0.8.0;
contract MutateOldGeneration {
    constructor() {

      MinterInterface contract_1 = new MinterInterface();
      require(contract_1.mint(), "mint failed");


      MinterInterface contract_2 = new MinterInterface();
      require(contract_2.mint(), "mint failed");
    }
}
