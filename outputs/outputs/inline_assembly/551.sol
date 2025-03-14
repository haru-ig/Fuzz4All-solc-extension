pragma solidity ^0.8.0;
contract IncrementalModification {

    mapping (address => uint256) public _balances;

    function add(address, uint amount) public {
        address addrOf_x = msg.sender;
        uint256 beforeBalanceOf = _balances[addrOf_x];
        _balances[addrOf_x] = beforeBalanceOf + amount;
    }

    function checkBalanceOf(address account) public view returns (uint256 balanceOf) {
        return _balances[account];
    }
}


pragma solidity ^0.8.0;
contract InlineAssemblyWithCallsAndConditionalBranches {

    using InlineAssemblySemanticEquivalent for bool;


    bool _x;

    function testMethod() public view returns(uint) {
        uint m;
        return m;
        **{
            let x1 := mload(0)
            mstore(0, x1)
            **{
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
            }
            **{
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
                mstore(0, x1)
            }
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
            mstore(0, x1)
        }
        return x1;
    }

    function isTrue() public view returns (bool) {
        return true;
    }

    function isFalse() public view returns (bool) {
        return false;
    }
}

contract Example {
    function testMethod() public pure returns (uint) {
        if (true) {
            if (true) {
