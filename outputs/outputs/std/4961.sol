pragma solidity ^0.8.0;
contract Concise {
    struct Person {
        uint256 age;
    }
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    Person[][] internal people;
    uint256 _personCount;
    constructor() {
        people[0] = new Person[](MAX_AGE);
        people[0][0] = Person(MIN_AGE);
        people[0][MAX_AGE - 1] = Person(MAX_AGE);
        _personCount = 1;
    }
    function newPerson() public returns (uint256 ){
        _personCount++;
        return _personCount;
    }
    function setAge(uint256 _index, uint256 _age) public {
        require(people[0][0].age <= MAX_AGE);
        people[0][_index] = Person(_age);
        require(people[0][_index].age >= MIN_AGE);
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return Person(people[0][_index].age);
    }
    function deletePerson(uint256 _index) public {
        delete people[0][_index];
        _personCount--;
    }
}
