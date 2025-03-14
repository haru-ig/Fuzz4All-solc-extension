pragma solidity ^0.8.0;
contract Equivalent2 {
    uint256 constant MIN_AGE = 11;
    uint256 constant MAX_AGE = 35;
    uint256 public counter;

    mapping(uint256 => Person) public people;
    constructor() {
        counter += 2;
        people[counter] = Person(MIN_AGE);
        people[counter + 1] = Person(MAX_AGE);
    }
    function newPerson() public returns (Person memory){
        people[counter] = Person(counter + 2);
        counter++;
        return Person(people[counter]);
    }
    function getAge(Person memory _person) public view returns (uint256){
        return _person.age;
    }
    function setAmount(uint256 _amount, Person storage _person) public {
        require(people[_person.age].age <= MAX_AGE);
        people[_person.age].age += _amount;
        require(people[_person.age].age >= MIN_AGE);
    }
    function getAmount(Person memory _person) public view returns (uint256) {
        return _person.age;
    }
    function deletePerson(uint256 _index) public {
        delete people[_index];
    }
}
