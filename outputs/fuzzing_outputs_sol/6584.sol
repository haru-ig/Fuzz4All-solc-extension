pragma solidity ^0.8.0;
contract FallbackContract {
    uint payable _fun(uint) external;
    function set() public payable {
        _fun(1);
    }
}
contract Caller {


    function callContract() public {
        SimpleStorage storage storage = SimpleStorage(0xbD20cF6C8C726cBE0039EFC2685ab781Bc923316);
        storage.set(val);
        FallbackContract contract = FallbackContract(0xf61eb569818C47F24d82C4EF26CCF070931BFFA7);
        contract.set.value(0.000001 ether)();
    }
}
