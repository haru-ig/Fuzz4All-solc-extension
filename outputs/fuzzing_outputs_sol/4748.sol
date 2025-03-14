pragma solidity ^0.8.0;
contract Caller {
    Maker public maker;
    receive() public payable {}
    constructor() {
        maker = new Maker();
    }
}
