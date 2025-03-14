pragma solidity ^0.8.0;
contract ArrayMutationsMutator {
   constructor(uint[] memory _numbers) {
        uint number0 = _numbers[0];
        delete _numbers[0];
        uint deletedNumber = _numbers[0];
    }
}
