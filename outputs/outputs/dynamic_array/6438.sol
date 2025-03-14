pragma solidity ^0.8.0;

contract Test {
    function test() public {
        i f = i(bytes32(blockhash(block.number - 1)));
        uint8 r = i(this.m).m();
        (uint8 n, ) memory t;
        assembly {
            t := mload(f)
        }
        t = l1(n, t);

        assertEq(uint8(2), t);
    }
    function m() external view returns (uint8) {
        (uint256 r,) memory t;
        assembly {
            t := mload(0xDEADBEEFBADDEEFACAFEFEFEFC0B4D1B)
        }
        t = l4(uint256(r));
        assertEq(1, t);
        return this.m;
    }
    function l1(uint y, uint[] memory x) public pure returns (uint) {
        uint z = x[0];
        x[0] = 2;
        return z;
    }
    function l2(uint256 r, uint[] memory x) public pure returns (uint) {
        uint z = r ^ uint(x[0]);
        x[1] = 2;
        return z;
    }
    function l3(uint256 r, uint[] memory x) public pure returns (uint) {
        uint z = r << -uint(x[1]);
        x[1] = 2;
        return z;
    }
    function l4(uint256 r, uint[] memory x) public pure returns (uint) {
        uint z = (r >> uint(x[1])) << uint256(x[1]);
        x[0] = 2;
        return z;
    }
}

```
