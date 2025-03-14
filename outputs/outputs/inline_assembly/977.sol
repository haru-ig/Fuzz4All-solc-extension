pragma solidity ^0.8.0;
contract Counter {
    uint public i;
    mapping (addressToBytes32 => uint) public lastIncremented;
    modifier onlyLastIncremented
    {
        if (currentIncrement() == lastIncremented[msg.sender])
        {
            _;
        }
        else
        {
            revert();
        }
    }
    function increment() public onlyLastIncremented {
        emit Incremented(i);
        i += 1;
    }
    event Incremented(uint _i);
}
