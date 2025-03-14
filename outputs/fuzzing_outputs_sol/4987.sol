pragma solidity ^0.8.0;
contract Bread {
    function Bread() public {}
    function fill() public pure returns (address) {
        return this;
    }
}
contract Candy {
    function giveBirth() public pure returns (address) {
        return address(new Bread());
    }
}
interface PayableBurner {
    function burn() public payable;
}
