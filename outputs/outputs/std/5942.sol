pragma solidity ^0.8.0;
contract SemanticEvidentChanges33 {
    uint256 private _storage = 100;
    function multiply() public pure returns (uint256) {
        return _storage * 2;
    }
    function increment() public {
        _storage++;
    }
    function decrement() public {
        _storage--;
    }
}
