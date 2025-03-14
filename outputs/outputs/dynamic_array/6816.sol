pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics {
    uint256[] public a;
    uint256[] public b;
    T34_call_data_array_semantics3 public z;
    T34_call_data_array_semantics3 public t;

    function test() public {
        a.push(1);
        a.push(2, 3);
        b.push(\x31\x32);
        z.Emit0(1);
        a.push(4);
        a[1] = 3;
        a.push(4);
        a[4] = 3;
        t.Emit1(2);
        t.b.push(3);
        T34_call_data_array_semantics3.emit(a.length, 2);
        T34_call_data_array_semantics3.emit(a.length, 2);
        T34_call_data_array_semantics3.emit();
    }
}
