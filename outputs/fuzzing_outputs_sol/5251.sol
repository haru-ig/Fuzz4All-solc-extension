pragma solidity ^0.8.0;
interface Fallback3
{
        function a(uint256 data) external;
}

pragma solidity ^0.8.0;
contract Caller
{
        bytes[] storage dataarray0;
        bytes[] storage dataarray1;
        mapping (uint => bytes) storemap;

        event New(bytes newvalue);


        fallback function()
        receive(uint256) {dataarray0.push("a0 " + msg.sender);}
        fallback function(uint a0)
        receive(bytes memory b0)
        {
        dataarray0.push("a1 " + bytes(convert(uint80(a0), byte)) + " " + b0);
        }
        fallback function() payable
        {
        dataarray1.push("a2 " + msg.sender);
        }
        fallback function(uint a0, uint a1) payable
        {
        dataarray0.push("b0 " + bytes(convert(uint80(a0), byte)) + " " + bytes(convert(uint80(a1), byte)) + " " + msg.sender);
        }

        fallback function(uint a0, uint a1, bytes memory b0) payable
        receive (bytes memory b1)
        {
        dataarray0.push("b2 " + bytes(convert(uint80(a0), byte)) + " " + bytes(convert(uint80(a1), byte)) + " " + bytes(b0) + " " + b1);
        }

        fallback function(uint a0, bytes memory b0) payable
        receive (bytes memory b1)
        {
        dataarray0.push("b3 " + bytes(convert(uint80(a0), byte)) + " " + bytes(b0) + " " + bytes(b1));
        }

        fallback function(uint a0, uint a1, uint a2, uint a3)
        receive (bytes memory b0) payable
        {
        dataarray0.push("c0 " + bytes(convert(uint80(a0), byte)) + " " + bytes(convert(uint80(a1), byte)) + " " + bytes(convert(uint80(a2), byte)) + " " + bytes(convert(uint80(a3), byte)) + " " + bytes(b0));
        }

        fallback function(uint a0, uint a1)
        receive (uint _data1) payable
        {
        dataarray0.push("d0 " + bytes(convert(uint80(a0), byte)) + " " + bytes(convert(uint80(a1), byte)) + " " + bytes(convert(uint80(_data1), byte)) + " " + msg.sender + " " + convert(uint80(address(this), uint80), byte));
        }

        fallback function() receive(bytes memory _data0)
