pragma solidity ^0.8.0;
interface Interf{
    event Value(uint value);
    function fire(uint256 num) public returns (uint result);
}
contract MutatedInterfArray {
    address payable myAddress;
    uint256[] arr = new uint256[](3);
    Interf myInterface;

    constructor(uint256[] memory _arr, Interf memory _int) public {
        myAddress = msg.sender;
        arr = _arr;
        myInterface = _int;
    }
    function setAddressAndFire() public {
        myInterface.fire.value(1 ether)(arr.length);
        emit Value(1);
    }
}
