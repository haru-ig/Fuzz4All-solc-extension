pragma solidity ^0.8.0;
contract C {
    event E(uint _data);
    function f0() public {
    	E(0);
    }
    function f1() public {
    	E(1);
    }


}
