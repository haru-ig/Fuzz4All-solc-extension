pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;
contract T34_call_data_array_semantics3 {
    uint256 constant xValueSize = 3;
	uint256 constant yValueSize = 4;
	uint256 constant zValueSize = 5;
    struct _T1 { uint256 value0; bool flag; uint256 value2; bool flag2; uint256 value4; bool flag4; uint256 value6; bool flag6; }
    struct _T2 { uint256 value2[xValueSize]; uint256 value2[yValueSize]; uint256 value2[zValueSize]; }
    struct _T3 { uint256 value0; uint256 value2; uint256 value4; uint256 value6; }

    uint256 constant xValue = 0x3030303030;
    uint256 constant yValue = 0x3232323232;
    uint256 constant zValue = 0x3333333333;

    uint256 constant xValueOffset = 2;
    uint256 constant yValueOffset = xValueSize * 2;
    uint256 constant zValueOffset = yValueSize * 2;
    uint256 constant xValueHigh = 0x3000300000300000;
    uint256 constant yValueHigh = 0x3200320000320000;
    uint256 constant zValueHigh = 0x3300330000330000;

    struct _T0 { bool flag; _T1 t1; uint256 value4; _T2 t2; uint256 value8; uint256 value9; _T3 t3; }
    struct _T4 { bool flag; bool flag2; uint256 value6; _T3 t3; uint256 value8; uint256 value9; bool flag3; }

    struct TestCase { uint256 a; uint256 b; _T0 t0; _T4 t4; _T0 t01; }
