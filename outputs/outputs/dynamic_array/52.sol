pragma solidity ^0.8.0;
contract A {
    uint256[] public bArray;

    function A() {
        bArray.push(1);
        bArray[0] = 1;
        bArray2[1] = 1;
        bArray.push(2);
    }

    function modify() public {
        bArray[0] = bArray.pop() + 2;
        bArray2.push(bArray[0] + 1);
    }
}

pragma solidity ^0.8.0;
contract A {
    address[] public addresses;

    struct NestedStructure
    {
        uint256 a;
    }

    NestedStructure[] public nestedStructures;

    function A() {
        for (uint i = 0; i < addresses.length; i++) {
            addresses[i] = msg.sender;
        }
        for (uint i = 0; i < nestedStructures.length; i++) {
            nestedStructures[i] = NestedStructure(i);
        }
    }
}
