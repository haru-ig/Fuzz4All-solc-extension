pragma solidity ^0.8.0;
library Lib
{
    function div(uint a, uint b) internal pure returns (uint) {
        return a / (a % b);
    }
    function mul(uint a, uint b) internal pure returns (uint) {
        return a * b;
    }
    function getMod(uint dividend, uint divisor) internal pure returns (uint) {
        return mod(dividend, divisor);
    }
}
contract TestLib
{
    function getMod(uint dividend, uint divisor) public view returns (uint) {
        return divMod(dividend, divisor);
    }
    function divMod(uint a, uint b) public view returns (uint) {
        return div(a, b);
    }
    function div(uint a, uint b) public pure returns (uint) {


        return ((a >> 27) * (b >> 27)) >> 27;
    }
    function mod(uint a, uint b) public pure returns (uint) {


        return ((a >> 27) * (b >> 27)) >> 27;
    }
}

pragma solidity ^0.8.0;
import "./TestLib.sol";
import "./Lib.sol";


contract Test {
    function test() public pure {
        uint a = 16;
        uint b = 10;
        uint expected = 13;
        uint actual;
        assembly {
            a := a - 1
            b := b + 1
            let expected := 13
            let actual := div(a, b)
            if actual!= expected {
                revert(div(actual, expected))
            }
        }

        Lib.div(expected, actual);
        actual = Lib.getDiv(expected, actual);
        assertEqual(actual, expected);
    }


    function assertEqual(uint x, uint y) internal pure {
        require(x == y);
    }
}
