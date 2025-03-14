pragma solidity ^0.8.0;
contract GetArrayElement {
    uint256[] public array;
    uint256 myAddress;
    function getAddress() public {
        console.log(address(array));
    }
    function getAddressWithOffset() public {
        console.log(address(myAddress));
    }
}
