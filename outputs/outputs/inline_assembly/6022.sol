pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyMutationExample1 {
    address public owner;
    uint256[] internal array;
    bytes32 bytes32Value = "Some Bytes32 string";

    function main() public {
        require(bytes32Value[2] == "S");
        owner = msg.sender;
        array.push(1);
        array.push(2);
        array.push(3);
        bytes32Value = "This is the bytes32Value modified to contain a new bytes32 value.";
    }
}
contract SemanticallyEquivalentAssemblyMutationExample2 {
    address public owner;
    uint256[] internal array;
    uint256 public total = 3;

    mapping(address => uint256) public userBoughtIdMapping;
    mapping(uint256 => address) public userIDMapping;

    bytes32 public bytes32Value = "Some bytes32 string";

    uint constant ONE_BILLION = 10**18;

    function main() public {
        require(bytes32Value[2] == "S");
        owner = msg.sender;
        array.push(1);
        array.push(2);
        array.push(3);
        bytes32Value = "This is the bytes32Value modified to contain a new bytes32 value.";
        total += 3;

        userIDMapping[1000] = msg.sender;
        userBoughtIdMapping[msg.sender] = 78009;
        while (total * ONE_BILLION < address(this).balance) {}
        userIDMapping[1337] = msg.sender;
        userBoughtIdMapping[msg.sender] = 1111;
    }
}
contract SemanticallyEquivalentAssemblyMutationExample3 {
    address public owner;
    uint256[] internal array;
    bytes32 bytes32Value;

    bytes32 public bytes32Value2 = "Some bytes32 string";

    uint constant ONE_BILLION = 10**1
