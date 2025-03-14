pragma solidity ^0.8.0;
contract G9d {
    address payable addr;
    function f() public returns(uint){
        uint a=2;
        addr=payable(0);
        addr.call{ value: 30 }("");
        return a;
    }
}
