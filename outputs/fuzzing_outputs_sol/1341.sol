pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_11()
        public
        returns (
            bytes memory,
            address
        ) {
        return (
            "hi",
            caller()
        );
    }
    function call_Caller_12()
        public
        returns (
            bytes memory,
            address
        ) {
        return (
            "bye",
            caller()
        );
    }
    function call_Caller_13()
        public
        returns (
            bytes memory,
            address
        ) {
        return (
            "hi",
            caller()
        );
    }
    function caller() public view returns (address) {
        return msg.sender;
    }
}
