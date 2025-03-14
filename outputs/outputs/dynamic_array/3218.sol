pragma solidity ^0.8.0;
contract Mod {
    address[49]  items;
    address[49]  getItems;
    function setItems(address[49] memory new_items) public {
        items = new_items;
    }
}
pragma solidity 0.5.8;

contract E {
    bool  flag ;
    constructor() public { flag = false; }
    function get() public view returns (address){
            flag =  false;
            return this;
        }
    function add() public view returns (bool){
        flag =!flag;
        return true;
    }
