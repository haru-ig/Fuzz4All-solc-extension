pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34I_call_data_array_semantics2 {
    function set(address _dest, Address[] memory a) public {
        int count;
        for (uint i = 0; i < a.length; i++) {
            count = count + a[i].addr();
        }
        emit Emit01(count);
    }
    event Emit01(int v);
    address addr;
}
