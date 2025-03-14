pragma solidity ^0.8.0;
contract Mutate0016b {
    uint256[10000] private _data;
    function f() internal view {
        for(uint256 i = 0; i < 10000; i++){
            _data[i] = 11;
        }
    }
}
