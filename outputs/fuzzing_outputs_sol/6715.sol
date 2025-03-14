pragma solidity ^0.8.0;
contract Caller {
    function () external payable {}
    function () external pure {}
    function () external payable pure {}
    function () external pure payable {}
    function () external payable pure {}
    receive () external payable {}
}
