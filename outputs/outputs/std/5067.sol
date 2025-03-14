pragma solidity ^0.8.0;
import "../TestHelpers/Arrays";
import "../../TestHelpers/TestConstants";
import "../Multiply";
contract Array {
    function testMinimumAndMaximum() public {
        uint[] memory array = [35, -1, 5, 5.25, 9];
        uint minimum = Arrays.findMinimum(array).getValue();
        emit TestConstants.emitValueEvent(minimum);
        uint maximum = Arrays.findMaximum(array).getValue();
        emit TestConstants.emitValueEvent(maximum);
        uint sum = Arrays.findSum(array);
        emit TestConstants.emitValueEvent(sum);
        uint maxDiff = Math.subtract(sum, maximum);
        emit TestConstants.emitValueEvent(maxDiff);
        uint minDiff = Math.subtract(minimum, sum);
        emit TestConstants.emitValueEvent(minDiff);
    }
    function getArrayMinAndMax() public {
        ArrayWithArrays memory arrays = ArrayWithArrays(
                [
                    ArrayWithArray(
                        [10, 30, 50],
                        0
                    ),
                    ArrayWithArray(
                        [5, -1, 5, 5.25, 9],
                        1
                    )
                ]
            );
        uint [] memory array = arrays.getArray();
        uint minimum = Arrays.findMinimum(array).getValue();
        emit TestConstants.emitValueEvent(minimum);
        uint maximum = Arrays.findMaximum(array).getValue();
        emit TestConstants.emitValueEvent(maximum);
        uint arrayMin = Arrays.findMinimum(arrays.getArrayMin()).getValue();
        uint arrayMax = Arrays.findMaximum(arrays.getArrayMax()).getValue();
        emit TestConstants.emitValueEvent(arrayMin);
        emit TestConstants.emitValueEvent(arrayMax);
    }
    function testSum() public {
        uint a = 217;
        uint b = 410;
        Assert.equal(Arrays.findSum([a,b]).getValue(), 236, "Expected 236");
        uint[] memory input = [10, 30, 50];
        uint index = 0;
        uint diff;
        for (; (index < (uint) input.length - 1); index++) {
            diff = Math.subtract(input[index], Multiply.multiply(input[index], input[index + 1]));
            Assert.equal(diff, 0, "Expected 0");
        }
    }
    function testMinAndMax() public {
        uint x1 = 35;
        uint x2 = -1;
        uint[] memory x = [x1, x2];
        Assert.equal(Arrays.findMinimum(x).getValue(), 0, "Expected 0");
        Assert.equal(Arrays.findMaximum(x).getValue(), 1, "Expected 1");
    }
    function testSort() public {
        uint[] memory x = [217, 279, 0, 4, 40];
        uint length = x.length;
        Assert.equal(Arrays.findSmallestIndexOf(x, 2).getValue(), 0, "Expected 0
