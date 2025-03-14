pragma solidity ^0.8.0;
contract Array {
    uint256[10] private array;
    function swapLeft(uint256[] memory arr) public {
        uint256 x = arr[0];
        arr[0] = arr[9];
        arr[9] = x;
    }
}
pragma solidity ^0.8.0;
enum Operator {
    Add,
    Subtract,
    Multiply,
    Divide
}
contract Convert{
    uint256[10] private numbers;
    mapping(uint256 => uint256[10]) private multipliers;
    function getMultiplier(uint256 number) public view returns (uint256[10] memory) {
        return multipliers[number];
    }

    function isInteger(uint256) private pure returns (bool) {
        return (number % 1 == 0);
    }

    function toPositiveInteger(uint256 number) private pure returns(uint256) {

        require(isInteger(number), "Conversion to positive integer failed");

        uint256 result = 0;
        uint256 multiplier = 1;

        while (number > 0) {
            uint256 remainder = number % 10;
            uint256 power = 1;

            while (multiplier >= 10) {
                multiplier /= 10;
                power *= 10;
            }
            result += power * remainder;
            number /= 10;
        }
        return result;
    }
    function toPositiveDecimal(uint256 number) public view returns (uint256) {
        uint256 negative = number % (-1000);
        if (negative > 0) {
            return toPositiveInteger(-number);
        }
        return toPositiveInteger(number);
    }
    function toPositiveDecimal(string memory number) public view returns (uint256) {
        return toPositiveInteger(uint256(uint80(bytes(number))} >> 128));
    }
    function fromPositiveInteger(uint256 number, uint256 multiplier)
        public view returns (uint256)
    {
        return (number * multiplier) >> 128;
    }
    function fromPositiveInteger(uint256 number) public view returns (uint256) {
        return fromPositiveInteger(number, 1);
    }
    function fromPositiveDecimal(uint256 number) public view returns (uint256) {
        return fromPositiveInteger(uint256(uint80(bytes(number))} >> 128));
    }
}
pragma solidity ^0.8.0;
contract Multiprecision{
    uint256 private x;
    uint256 private y;
    Convert.Operator private operator;

    function get(Convert.Operator operator, uint256 x, uint256 y)
        public
    {
        this.operator = operator;
        this.x = toPositiveInteger(x);
        this.y = toPositiveInteger(y);
        switch (operator) {
            case Convert.Operator.Add: {
                uint256 z = x + y;
                get(this
