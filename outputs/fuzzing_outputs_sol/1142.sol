pragma solidity ^0.8.0;
contract ComplexMutation {
    function complexMutation() public {
        emit Complex();
        address payable x = _address();
        uint z = 42;
        callSelf(x, z);
        callSelf(x, z);
        uint r = 0;
        r |= 5;
        r |= 5;
    }
    event Complex();
    fallback() external payable {}
    function _address() internal pure returns (address) {
        return address(this);
    }
    function callSelf(address payable target, uint z) internal {
        unchecked {
            let o = gas() - 20 ether + 70;
            target.transfer(o);
        }
    }
}
