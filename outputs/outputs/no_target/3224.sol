pragma solidity ^0.8.0;
contract seven {
    function b() public pure returns(bytes32)
    {
        bytes32 temp=uint8(34);
        temp = bytes32(temp+50) << 20;
        return temp;
    }
}
