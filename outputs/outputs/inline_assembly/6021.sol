pragma solidity ^0.8.0;
contract SemanticallyEquivalentAssemblyExample5 {
    address public owner;
    uint256[] internal array;
    mapping(address => uint256) public userBoughtIdMapping;
    function main() public {
        owner = msg.sender;
        array[0] = 1;
        array.push(2);
        array[1] = 3;
        userBoughtIdMapping[bscAddr(0x40)] = 1;
    }

    function bscAddr(address _data) private pure returns (address) {
       return uint20(uint19(_data)).add(uint20(uint19(_data))).add(uint40(uint20(_data))).add(uint16(uint60(_data)));
    }
}
contract SemanticallyEquivalentAssemblyExample6 {
    address public owner;
    uint256[] internal array;
    struct Item {
       address addr;
       uint256 amount;
    }

    constructor() {
        owner = msg.sender;
        array.push(1);
        array.push(2);
        array.push(3);
    }

    function main() public {
        owner = msg.sender;
        array.push(1);
        array.push(1);
        Item[] memory myArray = array;
        myArray.push(Item(bscAddr(0x40), 1));
        Item[] memory myArray2 = array;
        myArray2.push(Item(bscAddr(0x60), 0));
        delete myArray2[1];
    }
}
