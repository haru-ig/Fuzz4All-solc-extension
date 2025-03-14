pragma solidity ^0.8.0;
address owner = 0x823284b72A253c9B98C8658788a15D99aCc3880D;


struct Person {
    string name;
    bytes2[] hobbies;
}

contract Test {

    constructor() {
        Person memory p = Person(
            "John",
            new bytes2[](0)
        );

        bytes2[] hobbyArray = new bytes2[](2);

        hobbyArray[1] = "foo";
    }


    function testNestedArray() public payable {

        StructWithNestedArrays memory sw;
        sw.array1 = new uint256[](3);

        sw.array1[0] = 0;
        sw.array1[1] = SWAP8;
        sw.array1[2] = SWAP16;


        sw.nestedInts[0] = 150;
        sw.nestedInts[1] = 300;
        sw.nestedInts[2] = 0;


        Person memory p = Person(msg.sender, new bytes2[](0));

        p.hobbies.push(byte(1));
        p.hobbies.push(byte1(1));

        p.hobbies.push(address(0));
    }
}
