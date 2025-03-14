pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_01()
        public
        returns (
            uint,

            address
        ) {
        return (
            0,
            caller()
        );
    }
    function call_Caller_02()
        public
        returns (
            uint,

            address
        ) {
        return (
            1,
            caller()
        );
    }
    function call_Caller_03()
        public
        returns (
            uint,

            address
        ) {
        return (
            2,
            caller()
        );
    }
    function caller() public view returns (address) {
        return msg.sender;
    }
}
