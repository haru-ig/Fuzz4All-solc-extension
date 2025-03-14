pragma solidity ^0.8.0;

interface I
{
    function add2(uint) external pure returns (uint);
    function sub2(uint) external pure returns (uint);
    function mul2(uint) external pure returns (uint);
}
contract Contract
{
    using Lib for I;
    I i;

    function foo() public view returns (uint, uint, uint) {
        byte[] memory asmCodes;


        bytes4 sig = Lib.add(i);


        (asmCodes,,, ) = sig.calldata(abi.encode(i.add2(2)));


        bytes memory data = abi.encodeWithSignature(sig, (32, 4, 4));


        assembly {

            let add2_ptr := mload(0x40)


            mstore(add2_ptr, add2_ptr)


            add2_ptr.delegatecall(data)


            ret := and(mload(add2_ptr), 0xFF)
            returndatacopy(0, 0, 32)
            mstore(0x40, add2_ptr)
        }
    }
}
