pragma solidity ^0.8.0;
contract SentryMutateCaller {
    function Caller() public payable{
        _mutateCaller();
    }
    function _mutateCaller() internal payable returns (bool){
        return true;
    }
}
