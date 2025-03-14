pragma solidity ^0.8.0;
fallback () external payable {
    (bool returned, ) = msg.assert(false);
}
