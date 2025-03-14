pragma solidity ^0.8.0;
interface Fallback8 {
        function calldataAndLog(uint, uint256[3][7]) external;
        function calldata(uint64) external;
}
contract Caller9 {
        Fallback7 f;
        constructor(Fallback7 _f)
        {
               f = _f;
        }

        fallback (uint256[]) {
                f.c(42);
        }

        fallback (uint256[3][7]) {
                f.c(302);
        }

        fallback (uint256 x) {
                f.c(x);
        }

        fallback () payable {

        }

        fallback (uint a, uint b, uint c) payable {

        }

        fallback (uint) public {

        }

}
