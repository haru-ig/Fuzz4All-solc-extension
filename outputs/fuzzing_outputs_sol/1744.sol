pragma solidity ^0.8.0;
contract Caller{
    event CallBack(address to, bytes memory data);
    function callWithReturn( address _call, bytes calldata _data) public payable returns(bytes memory){
        emit CallBack ( _call, _data );
        return _data;
    }
}
