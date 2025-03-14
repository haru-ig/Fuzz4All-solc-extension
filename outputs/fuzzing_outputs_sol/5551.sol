pragma solidity ^0.8.0;
contract fallbacksemantic_mut4
{
    address payable myfallbackFunc;
    constructor() {
        myfallbackFunc = tx.origin;
    }
    fallbacksemantic_mut4() public
    {
        myfallbackFunc = payable(address(this));
    }
    function f() internal {
        call.value(msg.value)("");
    }
    receive() external payable {
        selfdestruct(myfallbackFunc);
    }
}
