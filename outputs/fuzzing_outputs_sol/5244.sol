pragma solidity ^0.8.0;
contract Mutator2
{
        function c() external pure {}
}
pragma solidity ^0.8.0;
contract Mutator3
{
        function f() internal pure returns (bool) {}
}

contract Caller
{
        using Mutator1 withMutator(bytes4 signature) as _call1;
        using Mutator2 withMutator(bytes4 signature) as _call2;
        using Mutator3 withMutator(bytes4 signature) as _call3;
        function call0() public pure {
                _call0(200);
        }
        function call1_payable() public pure payable {
                _call1(bytes4(keccak256(
                    bytes("fallback(address)"))));
        }
        function call2_nonpayable() public pure {
                _call2(bytes4(keccak256("f()")));
        }
        function call3_nonpayable() public pure {
                _call3(bytes4(keccak256("f()")));
        }
        function callN(uint16 v) public pure {
                for (uint256 i=0; i<v; i++) {
                        _call0(1);
                }
        }
        function call0(uint256 v) private pure {
                _call0(v);
        }
        function _call0(uint256 v) private pure {
                uint256 x;
                uint256 y;
                assembly {
                        x := 0x20 _slot(0)
                        y := 0x40 _slot(0)
                }
                y = y + v;
                x = 7 * x;
                assembly {
