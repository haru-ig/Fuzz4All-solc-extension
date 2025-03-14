pragma solidity ^0.8.0;
contract Caller {
    function get() public payable returns (uint) {
        return calldata.balance;
    }
}
contract Caller2 {
    function get() public pure returns (uint) {
        return 0x05016A850000000000000000000000000000000000000000000000000000;
    }
}
contract Caller3 {
    function get() public pure internal returns (uint) {
        return 0x05016A8500000000000000000000000000000000000000000000000000000;
    }
}
contract Caller4 {
    function get() public payable pure returns (uint) {
        return 0x05016A85000000000000000000000000000000000000000000000000000000;
    }
}
contract Caller5 {
   function get() public pure internal returns (uint) {
        return 0x05016A85000000000000000000000000000000000000000000000000000000;
    }
}
contract Caller6 {
   function get() public pure internal returns (bytes memory) {
        return hex"30000000";
   }
}
contract Caller7 {
   function get() public pure internal returns (bytes32 memory) {
        return hex"30000000000000000000000000000000000000000000000000000000000000";
   }
}

pragma solidity ^0.8.0
