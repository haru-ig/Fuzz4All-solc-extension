pragma solidity ^0.8.0;
contract Equivalent {
    struct Person {
        uint256 age;
    }
    Equivalent public equivalentContract;
    mapping(uint256 => Person) public people;
    mapping(uint256 => uint256) public amounts;
    uint256 public personCount;
    uint256 public minAge = 11;
    uint256 public maxAge = 35;
    constructor() {
        equivalentContract.people.push(Equivalent.Person(minAge));
        equivalentContract.people.push(Equivalent.Person(maxAge));
    }
    function newPerson() public returns (Person memory){
        personCount++;
        return equivalentContract.people[personCount];
    }
    function setAmount(uint256 _amount) public {
        require(equivalentContract.getAge(0).age <= maxAge);
        equivalentContract.people[0].age += _amount;
        require(equivalentContract.people[0].age >= minAge);
        amounts[personCount] += _amount;
    }
    function getAmount(uint256 _index) public view returns (uint256) {
        return amounts[personCount + _index];
    }
    function deletePerson(uint256 _index) public {
        delete equivalentContract.people[_index];
        personCount--;
    }
}
