pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller || msg.sender == valueFromCaller);
        _;
    }
    function example4() public onlyFromCaller {
        require(msg.value > 1 ether);
        valueFromCaller = msg.sender;
    }
}
