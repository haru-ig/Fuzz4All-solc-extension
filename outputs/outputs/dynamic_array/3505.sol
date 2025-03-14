pragma solidity ^0.8.0;
contract C {
    uint256[19500][24300][19995] v10;
    constructor() public {
        assembly {
            sstore(0, 0x00)
            mstore(0, 0x00)
            mstore(0, 0x00)
            mstore8(0, 0x00)
        }
    }
    function mul() public payable {}
}
