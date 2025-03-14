pragma solidity ^0.8.0;
contract Caller6
{
        address payable contractAddr;
        address payable payableFallbackAddr;
        address payable receiveFallbackAddr;

        fallback6 public x;

        constructor(address payable _contractAddr, address payable _fallbackAddr) public {
                contractAddr = _contractAddr;
                payableFallbackAddr = _fallbackAddr;
        }

        function c(uint64 _x) public {
                require(contractAddr.call{value: uint(uint(payableFallbackAddr.balance))}{x.c(uint64(_x))});
        }

        function d(uint64 _x) public payable {
                contractAddr.transferFrom(msg.sender, contractAddr, uint(uint(msg.value)));
        }

        function a(address _x) public {
                require(contractAddr.call{value: 1 ether}(_x));
        }

        function b(address _x) public {
                require(contractAddr.call{value: 2 ether}(_x));
        }
}
