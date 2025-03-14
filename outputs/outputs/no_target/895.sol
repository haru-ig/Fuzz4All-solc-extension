pragma solidity ^0.8.0;
contract SemanticMutation20 {
    function get() public pure returns (uint) {
        uint r = get();
        r++;
        assert (r >= r);
        r = r << -32 + 32;
        assert (r >= r);
        r |= 0x1000000000;
        return r;
    }
}
