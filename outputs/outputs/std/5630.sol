pragma solidity ^0.8.0;
contract M255 {
    address public myAddres;
    uint public z;

    constructor(){
        z=1610612733;
    }

    function set(uint z){
        z=z;
    }
    function get() public view returns(uint){
        return z;
    }
    function myfunc(uint z) public {
        set(z+1);
        z=get();
    }
    function sub() public {
        myAddres = msg.sender;
        z+=1;
    }
    function _transfer() public{
        myAddres = 0x00;
    }
}
