pragma solidity ^0.8.0;
contract Legacy{
    function isLegacy() external pure returns (bool){
         return true;
    }
}
contract ModifyExample{
    function modifyTest() public {
        Legacy testContract;
        testContract.modifyTest();
    }
}
