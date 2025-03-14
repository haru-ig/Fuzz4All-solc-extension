pragma solidity ^0.8.0;
contract FallbackApproving {
    function fallback(
        address _contract,
        bytes memory _signature,
        bytes memory _data,
        bytes1 _returnCode,
        bool _isStaticCall,
        bytes1 _returnDataType,
        bool _isPrivate,
        uint256 _gasLimit,
        mapping(address => uint256) private fallbackCallGas)
    public pure
    {
        fallbackCallGas[_contract][_signature] = fallbackCallGas[_contract][_signature] + 1;
        if (_isStaticCall) { revert(); }
        if (!(_returnCode == 0 || (uint(_isPrivate) == 1) )) { revert(); }
        if (_isStaticCall && (_returnDataType!= bytes(0))) { revert(); }
        if (_returnCode == bytes1(0) && (_returnDataType!= bytes(0))) { revert(); }
        if (_gasLimit == 0) { revert(); }
    }
    receive() external pure {}
    function() external payable { revert(); }
}
