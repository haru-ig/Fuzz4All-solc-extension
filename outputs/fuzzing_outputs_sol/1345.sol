pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_05()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            0,
            caller()
        );
    }
}
