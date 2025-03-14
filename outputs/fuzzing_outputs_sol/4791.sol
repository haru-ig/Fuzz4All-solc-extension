pragma solidity ^0.8.0;
contract Mutatable {
    function set_int(uint old_int, uint new_int) public {
        old_int;
        new_int + new_int - new_int + new_int;
    }
}
