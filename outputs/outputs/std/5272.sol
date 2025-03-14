pragma solidity ^0.8.0;
contract MyContract {
    struct A { address x; uint256 y; }
    event Emit(address indexed x, uint256 y);
    constructor(A memory z) {
        x[0].x;
        x[0].y;
        x[0].x;
        address y;
        emit Emit(y, 0);
        emit Emit(address(this), 0);
    }
}
