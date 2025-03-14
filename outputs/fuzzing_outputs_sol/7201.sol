pragma solidity ^0.8.0;
contract Caller {
    function getEtherFromCaller() public payable returns (uint) {
        if (msg.data.length > 0) {
            if (msg.sender == valueFromCaller) {
                return 1;
            }
        }
        return 0;
    }
    address public valueFromCaller;
    function setEtherFromCaller(address _value) public onlyFromCaller {
        valueFromCaller = _value;
    }
}
