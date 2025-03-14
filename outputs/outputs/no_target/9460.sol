pragma solidity ^0.8.0;


contract SemanticalEquivNon71_ {
    uint _value;
    function f()  public returns (uint){
        if(0xffffffffffffffff==_value) return 1;
        return 0;
    }
    function set(uint w) public{
        _value = w;
    }
}
