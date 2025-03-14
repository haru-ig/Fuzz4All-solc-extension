pragma solidity ^0.8.0;
contract Caller2 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback() external payable { msg.sender.call{value:100}(""); }
}

pragma solidity ^0.8.0;
contract Caller3 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback() external payable { address(this).call{value:100}(""); }
}
contract Caller4 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback() external payable { msg.data.send{value:100}(""); }
}
contract Caller5 {
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    fallback() external payable { _addr.call{value:keccak256(abi.encodePacked("\x44"Bytes.code, "0x"))}(""); }
}
contract Caller6 {
    uint public gas;
    address payable _addr;
    constructor() { _addr = payable(msg.sender); }
    receive() external payable {}
    function() external payable { gas > 0; gas -= gaslimit; }
    fallback() external payable { gas > 0; gas -= gaslimit; }
}
contract F0 {
    fallback() external payable {}
}
contract F1 {
    fallback() external payable pure {}
}
contract F2 {
    fallback() external pure {}
}
contract F3 {
    fallback() external { revert(); }
}
contract F4 {
    function () external { sendValue(address(this), 42); }
    fallback() external pure {}
}
