pragma solidity ^0.8.0;
contract FallbackReceiver {
    uint payable public x;
    fallback (uint y) external payable { x = y; }
}

contract Caller is Caller {
    function fallback(uint _x) public override pure {
        x = _x;

        fallback(_x);
    }
}
