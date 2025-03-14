pragma solidity ^0.8.0;
contract Contract {
    function call_Caller_09()
        public
        payable
        returns (
            uint,
            address,
            uint,
            uint
        ) {
        return (
            4,
            caller(),
            5,
            6
        );
    }
    function caller() public view returns (address) {
        return address(this);
    }
}
