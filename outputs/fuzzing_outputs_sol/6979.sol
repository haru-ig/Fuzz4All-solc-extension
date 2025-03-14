pragma solidity ^0.8.0;
contract CallerExample{
    function func1() public returns(uint){
        return modifierCall();
    }

    function modifierCall() public {
    }
}
