pragma solidity ^0.8.0;
contract Equivalent {
    struct Person {
        uint256 age;
        uint256 birthAge;
    }
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    Person[] public people;
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
    function setBirthAge(uint256 _age) public {
        require(people[0].age <= MAX_AGE);
        people[0].birthAge = people[_index].age;
        people[_index].age = 0;
        require(people[_index].birthAge <= MAX_AGE);
        people[_index].age += _age;
        require(people[_index].age >= MIN_AGE);
    }
    function getBirthAge(uint256 _index) public view returns (uint256) {
        return people[_index].birthAge;
    }
    function deletePerson(uint256 _index) public {
        delete people[_index];
        personCount--;
    }
}
