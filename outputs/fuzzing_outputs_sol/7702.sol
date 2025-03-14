pragma solidity ^0.8.0;
contract MutatedSemanticsFallback2
{
    uint256 private dataA;
    uint256 public dataB;
    bool public result;
    uint256 private otherData;
    function set(uint256 _v, uint256 _o, bytes32 _m) public { dataA = _v; dataB = _o; myMethod = _m; }
    function fallback() public pure { revert(); }
    modifier test {
        if (result) {
            _;
        }
    }
}
