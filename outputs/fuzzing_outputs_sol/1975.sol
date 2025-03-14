pragma solidity ^0.8.0;
contract Mutater2 {
    receive();
    uint32 internal _value;
    fallback() external payable { _value++; }
}


contract Mutater1 {
    uint32 internal _value;
    byte[] internal data;
    receive() external {
        _value++;
        data.push( msg.data );
    }
}

contract Contract1 {
    fallback() {}
}


contract Mutater4 {
    uint32 internal _value;
    uint internal _counter;

    constructor() {}

    function useAddress(address c) public{
        c.transfer(address(this).balance);
    }

    function useCall(address(calldata c) calldata) public {
        c();
    }

    fallback() external payable {
        _value++;
        _counter++;
    }

    receive() external payable {
        _value++;
    }
}
