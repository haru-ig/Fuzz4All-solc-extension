pragma solidity ^0.8.0;
contract SentryFallback{
    address public fallbackFunction;
    function Mutator() external payable{

        _mutateCaller();
        fallbackFunction.value(msg.value){
            _fallbackFunction();
        }
    }
    function _mutateCaller() public{
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x1)
        }
    }
    fallback() public payable{}
    function _fallbackFunction() public{
        assembly{
            mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,0x1)
        }
    }
}
