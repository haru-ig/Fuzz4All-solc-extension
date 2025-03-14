pragma solidity ^0.8.0;
contract ArrayMutations {
    constructor(uint[] memory _numbers) {

        delete _numbers[0];
    }
}
