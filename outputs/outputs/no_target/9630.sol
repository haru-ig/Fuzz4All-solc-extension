pragma solidity ^0.8.0;
interface IInterface_v4 is IInterface_v3 {
    function bar256(uint40 input) external returns(uint32) ;
}
address adress_v3 = address(0x9507e8a24187463a7f63a232177c6ad7c3775fa3);

pragma solidity ^0.8.0;
interface IInterface_v5 is IInterface_v4 {
    function bar39(uint160 input) external returns(address) ;
}
address adress_v4 = address(0x9507e8a24187463a7f63a232177c6ad7c3775fa3);
contract ABI_test {
    function test() internal view
    {
        IInterface_v3 i_v3 = IInterface_v3(adress_v3);
        uint160 x = i_v3.bar256(uint40(100));
        (uint160 x1, bool ok, ) = i_v3.bar256.selector;
        (uint160 x2,, ) = i_v3.bar256;
        (uint32 x3, bool ok) = i_v3.bar256(10);
        (uint160 x4,, ) = IInterface_v3.bar256.selector;
        (uint160 x5, bool ok) = IInterface_v3.bar256;
        uint160 x6 = i_v3.bar256(42);
        (uint160 x7,, ) = IInterface_v3.bar256;
        uint64 x8;
        (uint160 x9, bool ok) = i_v3.bar256(x8);
    }
}
uint160 ABI_test.test1 = ABI_test(adress_v3).test();
