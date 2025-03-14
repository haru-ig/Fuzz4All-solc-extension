pragma solidity ^0.8.0;
contract Test67 {

    uint[] storage arrayWithoutInitialization = [999];
    uint[] storage arrayWithInitialization = [0,999,365];
    uint[] storage uninitializedArray = [0];
    uint[1] uninitializedArray2 = [0];
    address[] nonstorage = [address(this)];

    function x() public {
        arrayWithoutInitialization[1] = 999;
        arrayWithoutInitialization[1] = 365;
        arrayWithoutInitialization[1] = 999;
        arrayWithoutInitialization[1] = 999;
        nonstorage[0] = msg.value;
        uninitializedArray[0] = 1;
        uninitializedArray[1] = 2;
        uninitializedArray2[0] = 3;
        uint[] memory tempStorage = arrayWithoutInitialization;
        arrayWithoutInitialization = arrayWithInitialization;
        arrayWithoutInitialization = tempStorage;
    }
    function y() public {
        nonstorage = [address(uint1(2)),address(uint1(24))];
        uninitializedArray3 = [10,20,30];
        uint[] memory tempStorage = uninitializedArray;
        uninitializedArray = uninitializedArray3;
        uninitializedArray = tempStorage;
    }
    function z() public {
        nonstorage[1] = address(new uint[](3));
        nonstorage[1][1] = address(new uint[](2));
        nonstorage[1][1][1] = address(uint1(12));
        nonstorage[1][1][2] = address(uint1(24));
        uninitializedArray4 = [10,20,30];
        uninitializedArray3 = [10];
        uint[] storage tempStorage = uninitializedArray2;
        uninitializedArray2 = uninitializedArray4;
        uninitializedArray2 = tempStorage;
    }
}
