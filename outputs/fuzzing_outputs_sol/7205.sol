pragma solidity ^0.8.0;
contract Example4 {
    address public payableValueFromCaller;
    using address for address payable;
    modifier onlyFromCaller {
        require(address(this).balance == 0);
        require(msg.sender == valueFromCaller);
        _;
    }
    function example4() public onlyFromCaller {
        payableValueFromCaller = msg.sender;
    }
}
