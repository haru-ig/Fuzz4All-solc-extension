pragma solidity ^0.8.0;
contract Caller {
    address public oldAddress;
    uint public oldBalance;
    uint[] public oldArray;
    address payable public oldReceiver;

    address public newAddress;
    uint public newBalance;
    uint[] public newArray;
    address payable public newReceiver;

    constructor() public {}

    function testReturnOld() public {
        oldAddress = address(new Old());
        oldBalance = oldAddress.balance;
        oldReceiver = payable(0x1234);
        oldArray = [1,2,3];
        Caller.old(oldArray);

        oldAddress.transfer(oldReceiver, oldBalance, newBalance, bytes(""));
        oldReceiver.transfer(oldReceiver, oldBalance);

        require(oldAddress.balance >= ETHER_MIN);
        newAddress = address(new New());
        newReceiver = payable(0x1234);
        newArray = [4,5,6];
        Caller.new(newArray);
        Caller.new(newAddress);

        newAddress.transfer(newReceiver, newBalance, bytes(""), "0x38");
        require(newAddress.balance >= ETHER_MIN);
    }
}
