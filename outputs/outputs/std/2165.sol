pragma solidity ^0.8.0;
contract Mutated_4_199 {
    struct Point{
        uint x;
        uint y;
    }
    function new(uint x, uint y) public {
        address x_addr = address(this);
        uint addr_to_set = (address(x_addr)).balance;
        require(uint(x_addr).balance > 0);
        x_addr.transfer(10);
        x_addr.transfer(100);
        uint addr_to_check = (address(this)).balance;
        uint expected_balance = 2*addr_to_check + x + y + addr_to_set;
        require(expected_balance == addr_to_check);
    }
}

pragma solidity ^0.8.0;
contract Mutated_4_149 {
    function call_set_storage(uint[] storage storage_location, uint index) public {
        storage_location[index] = 123;
    }
}
