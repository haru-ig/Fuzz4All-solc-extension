pragma solidity ^0.8.0;
contract LibMutated
{
    function sub(uint a, uint b) public pure returns (uint) {
        return (a - b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return (a * b);
    }
    function getDiv(uint dividend, uint divisor) public pure returns (uint) {
        return Lib.div(dividend, divisor);
    }
}

pragma solidity ^0.8.0;
contract LibInline
{
    function sub(uint a, uint b) public pure returns (uint) {
        return (a - b);
    }
    function mul(uint a, uint b) public pure returns (uint) {
        return (a * b);
    }
    function getDiv(uint dividend, uint divisor) public pure returns (uint) {
        return InlineASM.div(dividend, divisor);
    }
}
