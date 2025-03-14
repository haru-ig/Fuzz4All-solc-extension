pragma solidity ^0.8.0;
contract Example5 {
    bytes4 constant public FALLBACK_FUNCTION_ID = bytes4(0x9a3a3a3a);
    address public valueFromCaller;
    constructor() public {
        valueFromCaller = msg.sender;
    }
    function example5() public payable {
        valueFromCaller = msg.sender;
    }
    fallback() payable {
        revert("Fallback function must receive Ether");
    }
}
