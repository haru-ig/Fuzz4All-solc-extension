pragma solidity ^0.8.0;
contract ContractLegacy {
    function func() public {
        fallback();
    }
}


protocol Caller {
    function func() public returns (uint256);
}
