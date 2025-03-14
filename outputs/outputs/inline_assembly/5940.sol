pragma solidity ^0.8.0;


contract InMemoryTest {

    function setUint(uint32 _n) public {
        uint storage _a = msg.sender;
        for (uint256 i = 0; i < _n; i += 1) {
            _a += 1;
        }
    }
}
