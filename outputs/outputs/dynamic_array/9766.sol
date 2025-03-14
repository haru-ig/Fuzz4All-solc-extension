pragma solidity ^0.8.0;
contract Mutated {
    struct Data {
        string foo;
    }
    mapping(string => Data) foo;
    function fTest(Data memory d) public pure {
        foo["0x"] = d;
    }
}
