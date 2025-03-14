pragma solidity ^0.8.0;
library Lib {
    struct Person {
        string name;
        uint age;
        uint[] info;
    }

    function getResult(Person storage person, uint id) public view returns (string memory name, uint age) {
        name = person.name;
        age = person.age;
        if (0<=id && id<person.info.length) {
            (name, age) = (person.info[id], id);
        }
        return (name, age);
    }
}
contract C{
    function getResult(Lib.Person storage person, uint id)
        public
        view
        returns (string memory name, uint age)
    {
        name = person.name;
        age = person.age;
        if (0 <= id) {
            (name, age) = (person.info[id], id);
        }
        return (name, age);
    }
}
struct Person {
    uint age;
    uint info;
}
contract C{
    function getResult(uint info, uint id) public view returns (uint) {
        if (info > 0 && id<info) return (uint(info[id]), id);
    }
}
