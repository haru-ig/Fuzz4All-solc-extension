pragma solidity ^0.8.0;
contract RevertTest {
    function revert() {
        require(msg.data.length >= 1, 'Data must be exactly 1 byte');
        (msg.sender).call{value: 0x20}('');
        assert(false);
        uint x = 1;
    }
}
