pragma solidity ^0.8.0;
contract ModifyExample{
    function modifyTest() public {



        uint version = block.timestamp;

        require( version < block.timestamp, "legacy");



        modifyTest();
    }
}
