pragma solidity ^0.8.0;
contract NewSolidity {
    struct Person {
        uint8 age;
        string name;
        enum State { M, F };
    }
    function x() public view returns (uint) {
        return 750;
    }
    function GetPerson() public view returns (Person memory) {
        return Person(26, "<NAME>", State.M);
    }
}
