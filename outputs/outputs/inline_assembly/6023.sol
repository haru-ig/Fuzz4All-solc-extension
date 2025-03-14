pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample5 {
    address public owner;
    uint256[] internal array;
    function main() public {

        require(array.push(1) == false);
        array.push(2);
        array[0] = 3;
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    address public owner;
    uint256[] internal array;
    uint256 internal one;
    uint256 internal two;
    uint256 internal three;
    uint256 internal a;
    uint256 internal b;
    uint256 internal c;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        owner = msg.sender;

        require(array[0] == 1);
        array[0]++;
        array[1];
        array.push(2);
        array[0];
        array[0];
        array[2];
        array[2];
        userBoughtIdMapping[msg.sender];
    }
}
```

```solidity
pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample7 {
    address public owner;
    uint256[] internal array;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        owner = msg.sender;

        require(array[0] == 1);
        /* Array
