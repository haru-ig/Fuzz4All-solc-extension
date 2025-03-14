pragma solidity ^0.8.0;
contract Test43{
    uint256[] public myArray;
    uint256[] public myArray2;

    function test() public {
        for(uint i = 0; i < myArray.length; i++)
            myArray2[i] = uint256(i);
    }
    function test2() public {
    }
    function test3() public {
    }
    function test4() public {
    }
}
