pragma solidity ^0.8.0;
fallback(uint) public returns (uint) { if (msg.data.length > 25) return 4; }
}
