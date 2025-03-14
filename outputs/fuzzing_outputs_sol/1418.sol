pragma solidity ^0.8.0;
contract Caller{
    function callBack() public payable {
        MutatedFallbackExample(msg.sender).fallback(msg.data);
    }
}

contract ContractExample{

}
