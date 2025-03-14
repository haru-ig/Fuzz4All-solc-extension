pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T35_call_data_array_semantics {
    uint256[13] public a;
    uint256[13] public b;
    uint256[13][13] public c;
    function set() public {
        uint256 d = a[13];
        emit Emit02(d);
    }
    event Emit02(uint256 d);
}


contract UpgradingCallDataArrays {
    uint256[13] public a;
    uint256[13] public b;
    uint256[13][13] public c;

    function f() public {
        a[13] = a[255];
        emit Emit3(a[13], a[203], a[87], a[3], a[(a[170]) - 285], a[31]);
    }
    event Emit3(uint256 a0, uint256 a1, uint256 a2, uint256 a3, uint256 a4, uint256 a5, uint256 a6);
}

contract Test35 {
    function test() public {
        T35_call_data_array_semantics2 t = T35_call_data_array_semantics2(0x123456789ABC);
        t.set(TestCase[] (
            TestCase(0x0),
            TestCase(0xfff42e55113c)
        ));
        T35_call_data_array_semantics.set();
    }
}
