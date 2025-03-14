pragma solidity ^0.8.0;
contract Caller {
    function call_Caller_04_sem(Contract c)
        public
        payable
        returns (
            uint,
            address
        ) {
        return c.call_Caller_04();
    }
    function call_Caller_05_sem(Contract c)
        public
        payable
        returns (
            uint,
            address
        ) {
        return c.call_Caller_05();
    }
    function call_Caller_06_sem(Contract c)
        public
        payable
        returns (
            uint,
            address
        ) {
        return c.call_Caller_06();
    }
    function call_Caller_07_sem(Contract c)
        public
        payable
        returns (
            uint,
            address
        ) {
        return c.call_Caller_07();
    }
}
