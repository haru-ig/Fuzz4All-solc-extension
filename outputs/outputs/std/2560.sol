pragma solidity ^0.8.0;
contract HelloWorld2 {
    uint[10] immutable array = [1,2,3,4,5,6,7,8,9,10];
    function get(uint i) public view returns(uint)
    {
        return array[i];
    }
    function sum() public view returns(uint) { return array.length; }
    function print() public view {array.push(11);}
    function reverse() public view returns (uint) { return reverseUint(array[0]);}
}
contract HelloWorld3 {
    struct Person {
        string name;
        uint age;
    }
    Person[] people;
    function addPerson(Person memory myname, uint myage) public {people.push(myname);}
    function getPerson(uint idx) public view returns (Person memory myname) {
        if(idx < people.length) {
            myname = people[idx];
        };
    }
    function count() public view returns (uint) { return people.length; }
    function removeAllPeople() public { people.length = 0; }
}
contract HelloWorld4 {
    mapping(uint => uint) storedValues;
    function increment2Store(uint key) public {
        storedValues[key] = storedValues[key] + 2;
    }
    function getAndIncrement(uint key) public view returns (uint) {
        uint answer = storedValues[key];
        storedValues[key] = storedValues[key] + 2;
        return answer;
    }
}
