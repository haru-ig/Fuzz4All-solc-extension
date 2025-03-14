pragma solidity ^0.8.0;
contract Equivalent2 {
    struct Person {
        uint256 age;
    }
    mapping (uint256 => Person) public people;
    constructor() {
        People memory p1 = People(11);
        people[1] = p1;
    }
    function newPerson() public returns (Person memory){
        return Person(personCount);
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return people[_index];
    }
    function setAmount2(uint256 _amount) public {
        require(people[0].age <= MAX_AGE);
        people[0].age += _amount;
        require(people[0].age >= MIN_AGE);
    }
    function getAmount(uint8 _index) public view returns (uint256) {
        return people[_index].age;
    }





}
