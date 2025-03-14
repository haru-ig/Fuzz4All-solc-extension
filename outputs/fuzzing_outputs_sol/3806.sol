pragma solidity ^0.8.0;
contract Example20 {
    function example20() public {}
    fallback () public payable {}
}
contract Caller {
    function call () public {
        Example19 example;
    }
}
