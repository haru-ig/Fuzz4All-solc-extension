pragma solidity ^0.8.0;
interface I
{
    function sub(uint, uint) external pure returns (uint);
}
contract S
{
    function f() pure public {
        I i = I(0xABCDABCDaBCDABCDa0);
        uint add_result = Lib.add(11,4);
        add_result = Lib.div(add_result, 2);
        uint add_sub_result = Lib.add(add_result, i.sub(1));
        uint add_sub_result2 = Lib.sub(i.sub(i.sub(1)), 10);
        assert(add_result == add_sub_result && add_result == add_sub_result2);
        uint result = Lib.add(10, add_result);
        uint result2 = Lib.div(add_sub_result2, 3);
        uint mult3_result = Lib.mul(add_result, 3);
        uint div_result = Lib.div(mult3_result, 3);
        uint mul_result = Lib.mul(10, 1000);
        assert(result == 110040 && div_result == 32 && mul_result == 1000000);
        }
}
contract S3
{
    I i = I(0xABCDABCDaBCDABCDa0);




}
contract S4
{

    function f() public {
        uint add_result = Lib.add(11, 4);
        I i = I(0xABCD);
        assert(Lib.add(11, 2) == 22 && add_result == 22);
        assert(i.sub(1) == 10);
    }
}
