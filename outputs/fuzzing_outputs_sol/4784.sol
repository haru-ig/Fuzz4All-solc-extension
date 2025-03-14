pragma solidity ^0.8.0;
contract Caller {
    function f(uint32 _z) public pure{
        require(msg.data.length!= 0);
        bytes memory _foo = abi.encodePacked(uint32(uint256(_foo)^uint256(_z)));
        return Fallback8(_foo).receive(0.01 ether);
    }
}
