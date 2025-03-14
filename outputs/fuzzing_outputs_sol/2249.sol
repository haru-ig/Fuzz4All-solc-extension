pragma solidity ^0.8.0;
contract Contract {
    uint256 public _x;
    function f() public view returns (uint256) {
        return _x;
    }
    function f() internal {
        emit Emitted();
    }
    function f() public payable {
        emit Emitted();
    }
    function f() public receive {}
    function f() public payable receive {}
    function f() public noreturns {}
    function f() public pure {
        return msg.value;
    }
    function f() public returns (uint256) {
        return _x;
    }
    function f() public view returns (uint256) {
        return _x;
    }
    function f() public view returns (uint256) {
        return _x;
    }
    function g() internal pure returns (uint256) {
        return uint256(keccak256(abi.encodePacked(1,2)) ^ keccak256(abi.encodePacked(1,2))) + _x;
    }
    function h() internal view {
    }
    function i() public view returns (uint256) {
        return _x;
    }
    function emitEmission() public view returns (uint256) {
        emit Emitted();
        return _x;
    }
    function emitEmissionWithNonZeroData() public view returns (uint256) {
        _x = _x + 25*2;
        emit Emitted();
        return _x;
    }
}
