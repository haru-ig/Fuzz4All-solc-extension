pragma solidity ^0.8.0;
interface I_MyContract
{
    function set(uint c) external returns(bool);
}
 contract MyContract
{
    I_MyContract internal constant myContract = I_MyContract(0x1234567890123456789012345678908723);
    constructor(uint p_uint_1) public {
        uint a_uint_1 = uint(myContract.set(p_uint_1));
    }
}
