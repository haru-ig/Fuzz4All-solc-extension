pragma solidity ^0.8.0;
contract DifferSamenessOf{
    uint constant _value = 3;
    uint _balance = 345;
    uint private _gasPrice;
    constructor() {
        _balance = 789;
        _gasPrice = 546;
    }
    receive() external payable {}

    function _check(uint gasAmount) internal view returns (bytes memory) {
        return abi.encode(gasAmount);
    }
}
contract Caller {
    function call() public {
        DifferSamenessOf dsm = new DifferSamenessOf;








    }
}
