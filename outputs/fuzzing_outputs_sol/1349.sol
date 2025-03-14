pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_04()
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
    function call_Caller_05()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            1,
            caller()
        );
    }
    function call_Caller_06()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            2,
            caller()
        );
    }
    function call_Caller_07()
        public
        payable
        returns (
            uint,
            address
        ) {
        return (
            3,
            caller()
        );
    }
    function caller() public view returns (address) {
        return address(this);
    }
}
