pragma solidity ^0.8.0;




contract InterfereExample {
    uint8 public data;
    function set(uint8 _data) public {
        data = _data;
    }
    function get() public view returns (uint8) {
        return data;
    }
    function foo(uint8 _a) public returns (uint256) {
        uint8 d = data;
        return uint256(d + 15000000 * _a) - 15000000;
    }
    fallback function fallback() external {
        uint8 a;
        (a,) = msg.data;
        uint256 b = foo(a);
        uint8 c = b;
        if (b == foo(a - 2)) emit Fallback();

    }
}
