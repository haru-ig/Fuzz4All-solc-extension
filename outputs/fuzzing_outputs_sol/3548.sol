pragma solidity ^0.8.0;
contract MutateFallback {
    contract Mutatable{
        function f() public view returns (uint256){
            return 10;
        }
        function modifyF() public payable returns (uint256){
            return 20;
        }
    }
    Mutatable c;
    function f(){
        uint256 value;
        (value) = c.f();
    }
    function modifyf(){
        uint256 value;
        (value, ) = c.modifyF();
    }
}
