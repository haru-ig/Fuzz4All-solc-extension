pragma solidity ^0.8.0;
contract Equivalent {
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    mapping (uint256 => Person) public people;
    uint256 personCount;
    constructor() {
        personCount++;
        people[MIN_AGE] = Person(MIN_AGE);
        people[MAX_AGE] = Person(MAX_AGE);
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return people[_index];
    }
    function getPersonCount() public view returns (uint256) {
        return personCount;
    }
    function addPerson(Person memory _person) public returns (bool) {
        require(people[0].age <= MAX_AGE);
        uint256 index = personCount++;
        people[index] = _person;
        return true;
    }
    function removePerson(uint256 _index) public {
        delete people[_index];
    }
    function setAmount(uint256 _amount) public {
        require(_amount <= MAX_AGE);
        for (uint256 i=0; i<personCount; ++i) {
            people[i].age += _amount;
            require(people[i].age >= MIN_AGE);
        }
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return people[_index].age;
    }
    function modifyPerson(uint256 _index) public {
        People memory temp = people[_index];
        people[_index].age -= temp.age;
        people[_index].age += 10;
        people[_index].age -= temp.age;
    }
    function movePerson() public {
        for (uint256 i=0; i<personCount; ++i) {
            people[i].age += 2;
        }
    }
    function removePersonAndModifyAmount() public {
        uint256 index = personCount -
