pragma solidity ^0.8.0;

modifier onlyCaller{
    require(msg.sender == msg.data);
    _;
}
contract Baz{
    function fun1(uint32 a){
        assert(a > 32);
    }
    function fun2(){
        fun1(1) < fun2();
    }
}
