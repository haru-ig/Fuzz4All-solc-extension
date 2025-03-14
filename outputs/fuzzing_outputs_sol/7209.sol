pragma solidity ^0.8.0;
contract Example5 {
    address public valueFromCaller;

    modifier onlyFromCaller {
        return _msgSender() == valueFromCaller;
    }
    function example5() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
