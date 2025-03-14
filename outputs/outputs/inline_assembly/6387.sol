pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract MixedContactsExample29 {
    uint public i;
    uint public j;
    uint i;
    uint j;

    constructor() {
        i = 5;
        j = 20;
    }

    function increaseByFive(uint d) public {
        i = 5;
        j = 20;
    }

    function increaseByTen(uint b) public {
        i = 5;
        j = 20;
    }

    function increaseBy10(uint a) public {
        i = 5;
        j = 20;
    }

    function increaseBy50(uint j) public {
        i = 5;
        j = 50;
    }

    function increaseBy200(uint c) public {
        i = 5;
        j = 200;
    }
}

function main() {

    uint j;
    uint i = 5000;
    MixedContactsExample28 example1 = new MixedContactsExample28();
    j = 20;
    example1.increaseByTenAnd10(j);
    i = 10;
    MixedContactsExample29 example2 = new MixedContactsExample29();
    j = 100;
    example2.increaseBy5000And20(j);
    uint k;
    MixedContactsExample29 example3 = new MixedContactsExample29();
    i = 5;
    j = 5;
    example3.increaseByFiveAnd50(j);
    uint l;
    MixedContactsExample28 example4 = new MixedContactsExample28();
    j = 10;
    l = 10;
    MixedContactsExample28 example5 = new MixedContactsExample28();
    uint m;
    MixedContactsExample29 example6 = new MixedContactsExample29();
    uint n;
    MixedContactsExample28 example7 = new MixedContactsExample28();
    uint q;
    MixedContacts
