pragma solidity ^0.8.0;
contract semanticalyEquiv09
{
    function f() public pure { }
    function f0() public pure {
        require(false);
    }
    function g() public pure { }
    function h() public pure { }
    function f1() public pure {
        require(false);
    }
    function f2() public pure {
        require(true);
    }
}
contract semanticalyEquiv09
{
    bool internal field_01;
    bool internal field_02;
    uint internal field_03;
    uint internal field_04;
    uint internal field_05;
    uint16 internal field_06;
    uint16 internal field_07;
    uint16 internal field_08;
    uint internal field_09;
    uint internal field_10;
    uint internal field_11;
    uint32 internal field_12;
    uint32 internal field_13;
    uint64 internal field_14;
    uint64 internal field_15;
    uint8 internal field_16;
    uint8 internal field_17;
    uint8 internal field_18;
    int internal field_19;
    int internal field_20;
    int internal field_21;
    int internal field_22;
    int internal field_23;
    int128 internal field_24;
    int128 internal field_25;
    int128 internal field_26;
    int internal field_27;
    int internal field_28;
    int internal field_29;
    int32 internal field_30;
    int32 internal field_31;
    int64 internal field_32;
    int64 internal field_33;
    int8 internal field_34;
    int8 internal field_35;
    int internal field_36;
    uint internal field_37;
    uint internal field_38;
    enum E {
        E0 = 0,
        E1 = 1,
        E2 = 2,
        E3 = 3,
    }
    event Evt_01(
        address sender,
        uint32 argument_01
    );
    event Evt_02(
        bytes32 field3,
        E arg_02
    );
    function f() public
    {
        if (field_01)
            (field_02 |= field_11)? 0 : 99;
        if (field_01? field_02 : true) {
            h();
            return (field_03 = field_01 & field_03);
        }
        (field_04 &= field_06);
        require((field_18 & field_22) == E.E3);
        require(block.coinbase == msg.sender);
        field_04 |= field_18;
        field_18 &= (field_07 | field_35);
    }
