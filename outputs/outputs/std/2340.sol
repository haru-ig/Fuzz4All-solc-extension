pragma solidity ^0.8.0;
contract Equivalent
{
    mapping(bytes32 => int) public f;
    function multiplyAdd4() public returns(int)
    {
        for(uint i=0; i <10; i++){
            f[keccak256(abi.encode("\x123456789abc", i))] += 1;
        }
        return f["0x123456789abc"];
    }
}
