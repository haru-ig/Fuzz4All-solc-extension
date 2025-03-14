pragma solidity ^0.8.0;
contract Caller {
    function callMe() public pure returns (uint) {
        return 234;
    }
}

pragma solidity ^0.8.0;
contract Caller {
    function callMe() public pure returns (uint) {
        assembly {

            let result := mload(0x0)

            return(result)
        }
    }
}
