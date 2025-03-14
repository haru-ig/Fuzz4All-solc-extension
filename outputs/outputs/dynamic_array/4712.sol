pragma solidity ^0.8.0;
contract Test {
    string data;
    function MutateData() public {
        data = "Hello";
        data = "World";
        require(data == "World", "FAIL1");
    }
}

contract Test {
    using uint for uint[];
    uint[][] public data;
    uint[] public inner;
    uint length;

    function MutateData() public {
        inner = new uint[](5);
        data[0] = new uint[](5);
        data[1] = new uint[]{ 7 };
        length = 2;
        inner[1] += 2;
        inner[1] += 1;
        inner[1] += 8;
        inner[1] += 5;

        data[9] = new uint[](1);
        data[9][0] = 90;
        inner[9] = 99;

        length += 2;
        length += 1;
        length += 8;
        length += 5;
        data[length] = new uint[](1);
        data[length][0] = 90;
    }
}
