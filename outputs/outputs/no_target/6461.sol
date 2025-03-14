pragma solidity ^0.8.0;
constant c = 11000000000;
struct S{
    uint8 s;
}
struct S2{
    uint8 s;
}
struct S3{
    uint8 s;
}
contract MyProxy{
    function myFun()public{
        assembly {

            MyProxy myProxy := mload(0x40)

            mstore(0x40, 0)

            myProxy.setContractAddress(0,0x33)

            mstore(0x40, 0x60)

            mstore(0x40, addmod(mload(0x40), c, 0xffffffffffffffff))

            mstore(0x40, calldataload(32))

            mstore(0x40, blockhash(block.number))

            mstore(0x40, sub(msg.data.length, 1))

            mstore(0x40, add(msg.data.length, 1))


            mstore(0x40, keccak256("myFun()"))

            mstore(0x40, blockhash(add(block.number, 1)))

            mstore(0x40, 0x0803)
        }
    }
}
contract Proxy {
    struct Call {
        uint _index;
        address _sender;
        uint256 _value;
        bytes _data;
        uint256 _gasPrice;
        uint256 _gas;
    }
    Call[]  _calls;
    uint _currentIndex;

    function getCurrentCallData()view public returns(uint256 data){
        return (_calls[_currentIndex]._data.length == 0)? 0 : _calls[_currentIndex]._data;
    }
    function getCurrentCallGasPrice()view public returns(uint256 gasPrice){
        return (_calls[_currentIndex]._gasPrice == 0)? 0 : _calls[_currentIndex]._gasPrice;
    }
    function getCurrentCallGas()view public returns(uint256 gas){
        return (_calls[_currentIndex]._gas == 0)? 0 : _calls[_currentIndex]._gas;
    }
    function getCurrentCallSender()view public returns(address from){
        return (_calls[_currentIndex]._sender!= 0)? _calls[_currentIndex]._sender : _currentIndex + 1;
    }

    function getCurrentCallValue()view public returns(uint25
