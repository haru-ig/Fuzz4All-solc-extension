pragma solidity ^0.8.0;
contract MutatedContractV1 is MutatedContractV0 {
   uint public mutatedResult = minValue - increment * minValue * (10 ** 5);
}
