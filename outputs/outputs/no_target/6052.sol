pragma solidity ^0.8.0;
contract MyMod is Mod {
    function get() public returns(uint) {
        uint y = a;
    }
}

pragma solidity ^0.8.0;
contract Mod {
    uint a;
    function update(uint x) private returns (uint) {
        a = x;
        return 0;
    }
    function get() public view returns(uint) {
        uint y = x;
    }
}
