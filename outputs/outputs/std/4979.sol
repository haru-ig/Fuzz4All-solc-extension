pragma solidity ^0.8.0;
contract EquivalentStructurallyModified {
    struct Person {
        uint256 age;
        uint8[5] data;
    }
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    Person[] public people;
    uint256 personCount;
    constructor() {
        people.push(Person(MIN_AGE));
        people.push(Person(MAX_AGE));
    }
    function newPersons() public returns (Person[2] memory) {
        personCount += 2;
        return [people[MIN_AGE], people[MAX_AGE]];
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return people[_index];
    }
    function getPersonCount() public view returns (uint256) {
        return personCount;
    }
    function setAmount(uint256 _amount) public {
        require(people[0].age <= MAX_AGE);
        people[0].age += _amount;
        require(people[0].age >= MIN_AGE);
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return people[_index].age;
    }
    function deletePerson(uint256 _index) public {
        delete people[_index];
        personCount--;
    }
}
