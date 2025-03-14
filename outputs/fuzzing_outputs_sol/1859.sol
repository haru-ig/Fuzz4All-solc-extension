pragma solidity ^0.8.0;
contract MutatedFallbackCaller {
    address public _contract = address(new MutatedFallbackRecipient());
    fallback() external payable {
        address _caller = msg.sender;
        _caller.call{value: msg.value}("");
        msg.sender.call{value: 20}("");
        _caller.delegatecall{value: msg.value}("");
        msg.sender.delegatecall{value: 20}("");
        (bool f1, ) = _caller.contractcall{value: msg.value}("");
        (bool f2, uint256 g) = _caller.contractcall{value: msg.value}("");
        assert(f1);
        assert(g == 0);
        assert(_caller == _contract);
    }

}
