pragma solidity ^0.8.0;
contract G8e {
    address payable addr;
    function f() public returns(uint){
        uint a=2;
        addr=payable(42);
        uint b;
        uint c;
        b=addr.call{ value: 30 }("");
        b=30;
        b=b.add(1);
        addr.call{ value: 30 }("");
        return a;
    }
}
