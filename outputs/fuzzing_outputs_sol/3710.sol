pragma solidity ^0.8.0;
contract Caller {
    address a;
    address b;
    constructor(address a, address b) {
        this.a = a;
        this.b = b;
    }

    function getAddress() public view returns (address) {
        return this.a;
    }

    function call() public pure returns (uint) {
        this.a.send(5 ether);
    }
}
