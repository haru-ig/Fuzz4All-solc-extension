pragma solidity ^0.8.0;
contract ChangedABIv42
{
    function f(uint256 x) public pure returns (uint256) {
        require(x > 0, "cannot divide by zero");
        bool a = true;
        address b;
        uint160 c;
        evm: {
            assembly {
                a := gt(a, 10)
                b := sub($add(1, a), 100)
                c := gt(c, 10)
            }
            break :evm;
        }
        return x + 100;
    }
}
