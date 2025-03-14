pragma solidity ^0.8.0;
contract TestPrecompiled0d3ae {
    address payable payableRef;
    uint256 _uint;
    function f() internal pure returns(uint256) {
        unchecked {
            return _uint;
        }
    }
}
