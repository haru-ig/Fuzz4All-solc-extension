pragma solidity ^0.8.0;


import "./Caller.sol";

contract FallbackCaller is Caller
{
    mapping(bytes4 => bytes4) private _fallbackHandlers;

    constructor()
    {
        _fallbackHandlers[keccak256("fallback()")] = payableFallback;
    }

    receive () external payable {}

    function payableFallback(address sender, uint value, bytes memory _data) public payable
    {
        _fallbackHandlers[keccak256(uint2str(value), _data)] = sender;
    }

    bytes4 private _fallbackHandlerId(bytes calldata _handler) pure internal returns (bytes4)
    {
        return bytes4(uint256(keccak256(_handler)));
    }

    function _call(address _to, bytes calldata _data, bytes4 _fallbackId, bytes memory _dataStorage) public virtual override returns (bytes memory returnValue)
    {
        require(address(_to).isContract(), "caller:address is not contract");

        (bool success, bytes memory returnBytes) = _to.call{value: value}{_data};
        _fallbackHandlers[_fallbackId] = address(this).supportsInterface(_fallbackId)? address(this) : _to;
        if (address(0) == _to ||!success) revert("caller:fallback function execution failed");

        if (address(this).supportsInterface(_fallbackId))
        {
            _dataStorage = abi.encode(address(this), uint32(uint256(_dataStorage)));
            (success, returnValue) = _to.call{value: value,_dataStorage}{_data};
        }

        if (_dataStorage.length ==abi.encode(_data).length + 2)
        {
            for(uint256 i = 2; i < _dataStorage.length / 32; ++i)
            {
                assembly {
                    mstore(add(add(mload(_dataStorage), mul(32, i)), 32), mload(add(add(_dataStorage, i), 248)))
                }
            }
        }
        return returnValue;
    }
}
