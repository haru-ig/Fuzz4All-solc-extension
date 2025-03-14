pragma solidity ^0.8.0;
contract UpgradableCounter {

    uint internal x;


    uint internal y;



    uint public constant max = 5;


    modifier cannotOverride {
      bytes32 selector = type(UpgradableCounter).selector;
      require(x < max, "UpgradableCounter: x cannot be greater than max.");
      _;

      if (selector == type(Mutate).selector) {
        x -= 1;
      } else if (selector == type(Mutate).selector) {
        x -= 1;
      }
    }

    modifier cannotMutate {
      bytes32 selector = type(UpgradableCounter).selector;
      require(y
