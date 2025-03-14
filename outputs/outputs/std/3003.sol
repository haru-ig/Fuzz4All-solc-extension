pragma solidity ^0.8.0;
contract ArrayMutationsMutated {
    constructor(uint256[] memory _numbers) public { }


    function setNumber(uint _number, uint _number2) public {
        uint[] storage numbers = numbers();
        numbers[_number] = _number2;
    }
}
