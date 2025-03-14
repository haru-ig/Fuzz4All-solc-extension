pragma solidity ^0.8.0;
contract MutateExample {
    function mutate(address[] memory a) {
      a[0] = 1;
    }
}
