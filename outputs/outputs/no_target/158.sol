pragma solidity ^0.8.0;


contract Example {
    using SafeMath for uint256;
    uint256[10] memory values;

    modifier check() {
        values[0] += 1;
    }
    modifier wrapped() {
        values[1] += 2;
        _;
    }

    modifier wrapped2() {
        require(values[2] % 10 > 3, "Should add 20 to 5");
        values[2] += 10;
        _;
    }

    function multiply(uint256 a, uint256 b) public pure returns (uint256 c) {
        c = a.mul(b);
    }

    function doAdd() public returns (uint256 sum) {
        sum = mul(10, 30).add(mul(40, 50)).add(multiply(70, 80)).add(2 * values[5]);
        sum += values[4];
    }

    function doWrap() public wrapped {
        values[2] = 2 * 31;
        values[6] += values[3];
        values[7] += values[0];
        values[8] += values[1];
        values[9] += values[2];
    }

    function doWrap2() public wrapped2 {
        values[3] += values[4];
        values[0] += values[6];
        values[1] += values[7];
        values[2] += values[8];
        values[3] += values[9];
    }

    function doAssert() public check{
        assert(values[0] > 0);
        values[0] = 0;
    }

    function doRevert() public wrapped{
        revert("should return");
    }

    function doAddThenAssert() public {
        uint256 sum = mul(10, 30).add(mul(40, 50)).add(multiply(70, 80)).add(2 * values[5]);
        assert(sum > 200);
        values[0] += values[1];
        values[1] += values[9];
    }

    function doAddThenRevert() public wrapped {
        uint256 sum = mul(10, 30).add(mul(40, 50)).add(multiply(70, 80)).add(2 * values[5]);
        values[1] += values[9];
        revert("should revert");
    }
}
