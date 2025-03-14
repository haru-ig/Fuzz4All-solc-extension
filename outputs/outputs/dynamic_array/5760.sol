pragma solidity ^0.8.0;
contract Test832 {
    function test(
        modifier __func_pre(uint)
        {
        assert(msg.value == 50000000000);
        __func_pre(1);
        __func_pre(2);
        __func_pre(3);
        __func_pre(uint(0x1234'56789ABCDE));
        __func_pre(uint(0x123456789ABCDE));
        __func_pre(uint(0x123456789ABCDE));
        __func_pre(uint(0x123456789ABCDE));
        __func_pre(uint(-1));
        __func_pre(bytes32(0x1234'56789ABCDE));
        __func_pre(bytes32(0x123456789ABCDE));
        __func_pre(bytes32(0x123456789ABCDE));
        __func_pre(bytes32(-1));






        }
    ) public {}
}
