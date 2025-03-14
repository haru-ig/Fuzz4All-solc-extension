pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    function modifyArray() public {
        aData[1] = 2200;
    }
}

pragma solidity ^0.8.0;
contract MutateWithMemoryAccess {
    struct MyStruct {
        bytes value;
    }

    address owner;
    MyStruct myStruct;

    function mutateWithMemoryAccess() private {
        owner = msg.sender;
        myStruct = MyStruct(abi.encodePacked(myStruct.value));
        myStruct.value = abi.encodePacked("Test value!");
    }
}
