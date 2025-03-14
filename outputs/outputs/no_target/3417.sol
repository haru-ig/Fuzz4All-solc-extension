pragma solidity ^0.8.0;
contract m04 {
    function M1() public {
        m03 m03Contract = m03(0x0);
        bytes memory emptyBytes;
        m03Contract.M1();
        m03Contract.M1(bytes4(0));
    }
}
contract m05 {
    constructor() public {
        uint256 s = 0;
        unchecked {
            s--;
        }
        assert(s == 0);
    }
}
contract m03_v1 {
    function M1() public returns (bytes memory) {
        return bytes1(0);
    }
}
contract m04_v1 {
    function M1() public {
        m03 _m = m03(0x0);
        bytes _l = bytes(0);
        _m.M1();
        _m.M1(_l);
    }
}
contract m05_v1 {
    constructor() public returns {
        uint _s = 0;
        unchecked {
            _s--;
        }
    }
}
contract m03_v2 {
    function M1() public returns (bytes memory) {

        return (hex"0");
    }
}
contract m04_v2 {
    function M1() public {
        m03 _m = m03(0x0);
        bytes1 _l1 = bytes1(0);
        bytes2 _lg = bytes2(0);
        bytes3 _l = bytes3(0);
        bytes4 _l4 = bytes4(0);
        bytes5 _lk = bytes5(0);
        bytes6 _l6 = bytes6(0);
        bytes7 _l7 = bytes7(0);
        bytes8 _l8 = bytes8(0);
        bytes9 _l9 = bytes9(0);
        bytes10 _l10= bytes10(0);
        bytes11 _l11 = bytes11(0);
        bytes12 _l12 = bytes12(0);
        bytes13 _l13 = bytes13(0);
        bytes14 _l14 = bytes14(0);
        bytes15 _l15 = bytes15(0);
        bytes16 _l16 = bytes16(0);
        bytes17 _l17 = bytes17(0);
        bytes18 _l18 = bytes18(0);
        bytes19 _l19 = bytes19(0);
        bytes20 _l20 = bytes20(0);
        bytes21 _l21 = bytes21(0);
        bytes22 _l22 = bytes22(0);
        bytes23 _l23 = bytes23(0);
        bytes24 _l24 = bytes24(0);
        bytes25
