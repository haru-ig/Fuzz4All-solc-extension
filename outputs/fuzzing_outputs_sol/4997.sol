pragma solidity ^0.8.0;
contract Fallback {
    address payable private addpayable;
    constructor() public {
        addpayable = address payable(0);
    }

}
