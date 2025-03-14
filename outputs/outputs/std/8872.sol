pragma solidity ^0.8.0;
contract ExampleStruct5 {
    mapping(uint256 => Bytes32) private myMapping;
    constructor() {
        require(myMapping.length < 4, "Mapping too long");
        require(myMapping.length > 1, "Mapping too short");

    }
}
