pragma solidity ^0.8.0;
contract Caller
{
        function c(address x) public {
                (uint256 _,) = x.call{value: 1 ether}(abi.encodeWithSelector(address(Fallback5).fallback.selector));
        }
        function d(address x) public {
                (uint256 _,) = x.call(abi.encodeWithSelector(address(Fallback5).fallback.selector));
        }
        function a(uint64 x) public {
                (uint256 _,) = x.call(abi.encodeWithSelector(address(Fallback5).fallback.selector));
        }
        function b(uint64 x) public {
                (uint256 _,) = x.call{value: 1 ether}(abi.encodeWithSelector(address(Fallback5).fallback.selector));
        }
}
