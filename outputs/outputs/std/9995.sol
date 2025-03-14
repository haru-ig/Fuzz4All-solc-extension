pragma solidity ^0.8.0;

contract MutantArray {

    ArrayExample.Person _person = ArrayExample.Person({age: 30});
    mapping (uint => uint) public indexes_age;
    mapping (uint => uint) public values;
    mapping (uint => mapping (uint => uint256)) _person_values;
}
