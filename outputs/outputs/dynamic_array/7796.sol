pragma solidity ^0.8.0;
address addressOf(uint256 index) public pure returns (address) {
    bytes memory bs = new bytes6(42);
    return address(bs);
}
contract Test11 {
    address[100] _value;
    address _mem;
    address[42] _value1;
    constructor()
        public
    {
        _mem = addressOf(_value1[41]);
        _value[4] = _mem;
    }
}


contract Test12 {
    function run() external returns (address);
}
