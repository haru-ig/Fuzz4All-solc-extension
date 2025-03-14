pragma solidity ^0.8.0;
contract SentryMutateCaller {
    function Mutator() external payable {
        bytes memory sentry = "\x20\x06" "\x90\x3a" "\x5b\xfe" "\xcd\x4a";
        assembly{
        mstore(0xb41ad897723e75ba248f65129848600b9a81ea4b,sentry)
        }
    }

    function Caller (address _to, uint256 _value) public payable {
        address mutator = _to.delegatecall(abi.encodeWithSignature("mutateCaller()"));
        address payable _caller = mutator.delegatecall(abi.encodeWithSignature("caller()"));
        require(address(this).balance >= _value, "Caller.amount_not_enough");
        _caller.transfer(_value);
    }

    function caller() public returns (uint256) {
        return uint256(mload(0xb41ad897723e75ba248f65129848600b9a81ea4b));
    }
}
