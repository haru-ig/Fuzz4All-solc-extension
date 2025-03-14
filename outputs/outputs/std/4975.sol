pragma solidity ^0.8.0;
contract Array {
    struct Person {
        uint256 age;
        bool alive;
    }
    uint256 constant MIN_AGE = 21;
    uint256 constant MAX_AGE = 50;
    uint256[] public people;
    uint256 personCount;
    constructor() {
        people.push(MIN_AGE);
        people.push(MAX_AGE);
        people.push(101);
        people.push(201);
    }
    function newPersons() public returns(Person[4] memory) {
        personCount += 4;
        return [people[0], people[1], people[2], people[3]];
    }
    function getAge(uint256 _index) public view returns (Person memory) {
        return people[_index];
    }
    function getPersonCount() public view returns (uint256) {
        return personCount;
    }
    function setPeople(uint256[] memory _people) public {
        require(people[0] <= MAX_AGE);
        require(_people.length == 4);
        people[_people[0]] = Person(people[_people[0]], _people[3] > 1);
        people[_people[1]] = Person(_people[1], (_people[3] > 1) && (people[_people[2]]!= people[_people[2]] - 1));
        people[_people[2]] = Person(_people[2], (_people[0] > 1) && (_people[1] > 1));
    }
    function reverseArray() public {
        uint256 len = people.length;
        for (uint256 i = 0; i < len / 2; ++i) {
            uint256 tmp = people[i];
            people[i] = people[len -1 - i];
            people[len - 1 - i] =
