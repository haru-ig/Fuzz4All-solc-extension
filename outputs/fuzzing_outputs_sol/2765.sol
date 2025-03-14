pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    modifier Payable() {require (msg.value == 0, "Contract does not pay");_;}
    constructor() { _addr = payable(msg.sender); }
    fallback () external Payable {   }
}

pragma solidity ^0.8.0;
contract Caller3 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    fallback () external { revert(0x0); }
    receive() external payable { revert(0x0); }
}

pragma solidity ^0.8.0;
contract Caller4 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    fallback () external payable { revert(0x0); }
    receive() external payable { revert(0x0); }
}
