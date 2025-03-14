pragma solidity ^0.8.0;
contract Receivable {
    receive() external payable { }
}
contract Fallback {
    mapping(bytes4 => bool) registered;
    bytes4 constant _FAL_RETURN = 0x90;
    bytes4 constant _D_RECEIVABLE = 0xa0;
    constructor() {

        registered[_D_RECEIVABLE] = true;
        registered[_D_RECEIVABLE(0, 1, 2, 3, 4, 5, 6, 7, 8)] = true;
    }
    fallback() payable {
        if (!registered[msg.sig]) {
            if (msg.value > address(this).balance) revert();
        }
        address_.transfer(msg.value);
    }
}
