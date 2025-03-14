pragma solidity ^0.8.0;
interface IDelegateCaller{
    function delegateCallerFunction() external view returns (uint);
}
contract MultiprecisionTest {

    using Multiprecision for uint;

    function basicTest() public pure{
        uint test1Value = 12.times(12).toUint();
        uint test2Value = 10.times(100).toUint();

        uint sum = test1Value.add(test2Value).toUint();
        uint sub = test1Value.sub(test2Value).toUint();
        uint mul = test1Value.mul(test2Value).toUint();
        uint div = test1Value.div(test2Value).toUint();


        uint rem = test1Value.div(test2Value);


        bool eq = test1Value.equals(test2Value);


        bool gt = test1Value.gt(test2Value);


        bool gteq = test1Value.gteq(test2Value);


        bool lt = test1Value.lt(test2Value);


        bool lteq = test1Value.lteq(test2Value);
    }

    function addTest() public pure{
        uint test1Value = 12.times(12).toUint();
        uint test2Value = 10.times(100).toUint();
        uint sum = test1Value.add(test2Value);

        eq(test1Value + test2Value, sum);
        gt(test1Value + test2Value, test1Value + test2Value);
        gteq(test1Value + test2Value, test1Value);
        lt(test1Value + test2Value, test1Value - test2Value);
        lteq(test1Value + test2Value, test1Value);


        eq(test1Value + " ", 1.toUint());

        gt(test1Value + " ", 1.toUint());
        gteq(test1Value + " ", 1.toUint());
        lt(test1Value + " ", 0);
        lteq(test1Value + " ", 0);


        eq(test1Value - test2Value, test1Value - " ");

        gt(test1Value - test2Value, test1
