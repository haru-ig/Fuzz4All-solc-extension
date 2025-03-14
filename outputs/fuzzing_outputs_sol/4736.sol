pragma solidity ^0.8.0;
contract Caller {
    Maker maker;
    constructor() payable {
        maker = Maker(msg.sender);
    }
}
