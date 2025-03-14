pragma solidity ^0.8.0;
contract Mod{
    uint[79][9] items;
    function setItems(uint[239][9] memory new_items) public{
        items = new_items;
    }
}

contract Contract {
    address creator;
    uint[] data;
    uint[] getdata;
    uint time;
    constructor() payable {
        creator = msg.sender;
        data.push(100);
        data.push(3412);
        data.push(51);
        data.push(1);
    }
    function transfer_all(address dest) public {
        require(msg.value > 0);
        dest.transfer(address(this).balance);
    }
    function get_all() public view returns(uint[9]) {
        return data;
    }
    function get_all_mut() public view returns(uint[9]){
        return getdata;
    }
    function modify() public {
        data.push(2543);
    }
    function modify_get() public {
        getdata.push(2434);
    }
    function call() public {
        msg.sender.call{value: 1000}(abi.encodeBytes("Hi"));
    }
    function checktime() public view returns(uint) {
        return time;
    }
    function settime(uint timestamp) public {
        time = timestamp;
    }
}

contract MyContract is Mod, Contract{
    function setItems_with_update_storage(uint[99][9] memory new_items) public {
        items = new_items;
    }
    function getItems_with_update_storage() public view returns(uint[99][9]){
        return items;
    }
    function setItems_update_memory() public update_set_memory(_data, _new_data) private {
        items = _new_data;
    }
    function getItems_update_memory() public view returns(uint[99][9]){
        return items;
    }
}
