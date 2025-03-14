pragma solidity ^0.8.0;
contract MixedContactsExample5 {
    struct Person { uint256 id, balance; uint8 age; uint gender; }
    function mintPerson(Person memory p) public {
        p.age = uint8(a);
        p.balance += p.age * 100;
    }
    function mintMorePeople() public returns (uint256) {

        uint256 n = 0;
        mintPerson(Person({ id: n, balance: 0, age: 0, gender: 9 }));
        mintPerson(Person({ id: n + 1, balance: 0, age: 18, gender: 9 }));
        mintPerson(Person({ id: n + 2, balance: 0, age: 29, gender: 8 }));
        return ++n;
    }
}
