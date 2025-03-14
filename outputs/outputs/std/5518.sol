pragma solidity ^0.8.0;
contract Mutate01 {
    uint myUint;
    uint[] myUintArray;

    function test(uint8[] memory) public {
        myUintArray = uint8[3]();
        myUint  = uint();
    }
}

pragma solidity ^0.8.0;
contract Mutate02 {
    uint8[] myUintArray;

    function test(uint8[] memory) public {
        myUintArray = uint8[3]();
        myUintArray = uint8[3]();
        myUintArray = myUintArray;
    }
}
