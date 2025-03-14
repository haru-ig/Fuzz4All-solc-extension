pragma solidity ^0.8.0;
contract EquivalentMutated {
    struct Person {
        uint256 age;
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
    function setAmount(uint256 _amount) public {
        require(people[0].age <= MAX_AGE);
        people[0].age += _amount;
        require(people[0].age >= MIN_AGE);
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return people[_index].age;
    }
    function deletePerson(uint256 _index) public {
        uint256 lastIndex = people.length - 1;
        if (_index == lastIndex) {
            uint256 amount = people[lastIndex].age;
            people[lastIndex].age = 0;
            people[lastIndex].age += amount;
            uint256 leftOver = people[lastIndex].age;
            people[lastIndex].age = leftOver;
        } else {
            uint256 age;
            if (_index > lastIndex) {
                age = people[lastIndex].age;
            } else {
                age = people[_index].age;
            }
            oldPerson = people[lastIndex];
            people[lastIndex].age = 0;
            oldPerson.age = age + 1;
