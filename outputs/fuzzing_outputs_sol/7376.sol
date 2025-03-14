pragma solidity ^0.8.0;
contract Caller {
    fallback() external payable {}
}
contract Caller2 {
    fallback() external payable {}
}
contract Caller3 {
    receive() external payable {}
}
contract Caller4 {
    receive() external payable {}
     receive() external payable {}
}
