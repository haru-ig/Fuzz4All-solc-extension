pragma solidity ^0.8.0;
contract Contract {
    function call_Caller()
        public
        pure
        returns (
            uint,
            address
        ) {
        return (
            3,
            addr()
        );
    }
    function addr() public pure returns (address) {
        return msg.sender;
    }
}
