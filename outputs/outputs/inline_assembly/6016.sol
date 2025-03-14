pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample3 {
    address public owner;
    uint256[] internal array;
    function main() public {
        owner = msg.sender;
        array.push(1);
        array.push(2);
        array.push(3);
    }
}

pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample4 {
    address public owner;
    uint256[] internal array;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        owner = msg.sender;
        array[0] = 1;
        array.push(2);
        array[1] = 3;
        userBoughtIdMapping[msg.sender] = 1;
    }
}
