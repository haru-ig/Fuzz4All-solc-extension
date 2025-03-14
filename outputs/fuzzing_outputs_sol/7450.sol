pragma solidity ^0.8.0;
contract HighLevel {
    address addr1;
    address addr2;
    uint amount = 20;
    address[] calldata args;

    function callAndAssertNoException(uint a) public returns (uint) {
        require(a == 1);
        args[0].call{value:amount}(abi.encodeWithSignature("transfer(address,uint)",addr1,8));
    }
}
