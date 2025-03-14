pragma solidity ^0.8.0;
contract L0 {
    uint constant initialx = 0;
    uint constant initialy = 0x98765432109876543210;
    function f() public returns (uint) {
        uint tmp8 = 5;
        assembly {
            let _tmp1 := tmp8 + 0x123435


            let _tmp2 := tmp8 + _tmp1


            let tmp8 := initialy + tmp8

            let _tmp3 := 0x123435


            let _tmp4 := tmp8 + _tmp3


            let tmp9 := _tmp2 + initialy
        }
        return 0;
    }
}
