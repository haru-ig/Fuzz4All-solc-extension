pragma solidity ^0.8.0;
contract mapmap
{
        mapping(uint=>bytes4) _fallbackFunction;

        mapping(uint=>bool) _fallbackExists;

        function f() external { _fallbackExists[tx.origin]=true; }

        function g() external {
              (uint a, uint b, bytes memory b2) = _fallbackFunction[tx.origin];
              bytes memory tmp = abi.decode(b, (address,uint,bytes32));
              mapping(uint=>uint) _fallbackToCaller;
              _fallbackToCaller[tx.origin] =  uint(_fallbackFunc);
              bytes memory t = abi.encodePacked(address(_fallbackToCaller));
              return tmp;
        }
}
