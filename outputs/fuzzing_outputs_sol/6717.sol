pragma solidity ^0.8.0;
contract Caller {
    function () external payable {}
    fallback () public {}
    receive () external payable {}
}
