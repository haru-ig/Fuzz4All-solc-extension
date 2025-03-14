pragma solidity ^0.8.0;
contract Example4 {
    address public valueFromCaller;
    modifier onlyFromCaller {
        require(msg.sender == valueFromCaller, "Value does not come from caller's address");
        _;
    }
    function example4() public onlyFromCaller {
        valueFromCaller = msg.sender;
    }
}
contract Caller {
    function callExample(address contractToCall) public payable returns (address) {
        Example4 myContract = Example4(contractToCall);
        myContract.example4();
        return valueFromCaller;
    }
}
