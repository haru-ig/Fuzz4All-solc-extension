pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T0F9B_call_data_array_semantics {
    struct Test { uint a; }
    bytes4 sig = type(Test).compileEthereumContract();
    function callWithDifferentTypes(address payable z, Test[] memory m1, Test[] memory m2)
    public {
        z.call.value(1 ether)(abi.encodeWithSignature(sig, m1, m2));
    }
}
