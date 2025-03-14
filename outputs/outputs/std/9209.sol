pragma solidity ^0.8.0;
contract MutatedContract {
    MutatingContract mc_instance;
    constructor() {
        mc_instance = new MutatingContract();
    }
    function changeArray() public {
       array *= 2;
    }


    function modified_change_array() public view_only {
        require(array == mc_instance.incArray());
        emit modified_arraychange(array);
    }
    event modified_arraychange(uint256);
}
uint8 v = 8;
address addr;
assembly {

    addr := 0
}
uint256 x;
function f() public {
    x = 10;
    emit e(msg.sender, v, addr, 1);
}
event e(address sender, uint8 v, address addr, uint256 x);
