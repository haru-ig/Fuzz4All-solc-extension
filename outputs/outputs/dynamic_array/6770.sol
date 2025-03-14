pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35B_calldata_array_semantics {
    function set(address _dest, byte[] memory b) public {
        int a;
        for (uint j = 0; j < b.length; j++) {
            for (uint i = 0; i < b.length; i++) {
                if (b[k] < b[j]) a++;
            }
        }
        emit Emit02(a);
    }
    event Emit02(int v);
}
