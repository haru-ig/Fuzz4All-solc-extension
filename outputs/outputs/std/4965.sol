pragma solidity ^0.8.0;

contract EquivalentMutated {
    struct Person {
        uint256 age;
    }
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    mapping(uint256 => Person) public people;
    uint256 personCount;
    constructor() {
        people.push(Person(MIN_AGE));
        people.push(Person(MAX_AGE));
    }
    function newPerson() public returns (Person memory) {
        personCount++;
        return Person(personCount);
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return people[_index];
    }
    function getPersonCount() public view returns (uint256) {
        return personCount;
    }
    function setAmount(uint256 _amount) public {
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
