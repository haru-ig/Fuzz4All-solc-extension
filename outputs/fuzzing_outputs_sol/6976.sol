pragma solidity ^0.8.0;
contract SpendingExample{





    function spendingTest() public {
        (bool success, ) = address(this).delegatecall(bytes(0));
    }

    function spendingTest2() public {
        (bool success, ) = address(this).delegatecall(abi.encodeWithSignature(""));
    }
}
