pragma solidity ^0.8.0;
contract Contract {
    using Contract for uint;
    function call_Caller_08()
        public
        view
        returns (uint) {
        return caller();
    }
    function caller() public view returns (uint) {
        return (uint)address(this);
    }
}
