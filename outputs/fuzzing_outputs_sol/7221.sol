pragma solidity ^0.8.0;
contract Example5 {
    address public valueFromCaller;
    function _getCallerAddress() internal returns(address){
        return msg.sender;
    }
    function example5() public payable returns(uint){
        address _currentCaller = _getCallerAddress();
        valueFromCaller = _currentCaller;
        return _currentCaller.balance;
    }
}
contract Example6 {
    function example6() public payable {
        address value = msg.sender;
        uint8 constant amount = 5;
        uint256 balanceValue = value.balance;
        if (uint8(amount) > balanceValue) {
            return;
        }
        value.transfer(amount);
    }
}
contract Example7 {
    function example7() public payable {
        address value = msg.sender;
        uint256 amount = value.balance.add(msg.value);
    }
}
contract Example8 {
    function callContractWithFallback() public {
        Example7 receiver = Example7(0xdeadbeef);
        receiver.example7();
    }
}
