pragma solidity ^0.8.0;
contract Test17 {
    struct Test {
        uint16 var_1;
        uint16 var_2;
    }
    Test[3] storage mem;

    function set_mem(uint256 _new_var_1, uint256 _new_var_2)
        public
    {
        mem[0].var_1 = _new_var_1;
        mem[0].var_2 = _new_var_2;
    }
}
