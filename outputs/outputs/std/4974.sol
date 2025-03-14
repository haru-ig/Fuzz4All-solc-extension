pragma solidity ^0.8.0;
contract Mutations {
    struct Person {
        uint256 age;
    }
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    Person[] people;
    uint256 personCount;
    constructor() {
        people.push(Person(MIN_AGE));
        people.push(Person(MAX_AGE));
        personCount = people.length;
    }
    function newPerson() public returns (Person memory) {
        Person memory self = Equivalent().newPerson();
        personCount++;
        people.push(Person(personCount));
        return self;
    }
    function clear() public {
        people.length = 0;
        personCount = 0;
    }
    function deletePerson(uint256 _index) public {
        delete people[_index];
        people.length--;
        personCount--;
    }
    function setAmount(uint256 _amount) public {
        require(people[0].age <= MAX_AGE);
        people[0].age += _amount;
        require(people[0].age >= MIN_AGE);
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return people[_index].age;
    }
}
