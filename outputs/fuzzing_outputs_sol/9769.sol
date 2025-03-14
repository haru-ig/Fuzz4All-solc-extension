pragma solidity ^0.8.0;
contract MutatedExample {
    uint8 constant x = 3;
    mapping (bytes32 => uint) map_;
    function f() public returns (uint) {
        uint i = map_[keccak256("x")];
        uint j = map_[keccak256("y")];
        uint64 k = map_[keccak256(uint64ToAddress(uint256(-6)))];
        bool l = map_[keccak256(bytes(12))] > 0;
        map_[keccak256("x")] -= x;
        i = -1;
        map_[keccak256("a")] /= i;
        map_[keccak256("z")] *= i;
        map_[keccak256("x")][keccak256("x")]++;
        map_[keccak256("x")] = -map_[keccak256("x")];
        map_[keccak256("a")].or(map_[keccak256("b")]);
        map_[keccak256("b")] = l? 0 : bytes32(uint64(x));
        return l? 0 : map_[keccak256("z")][keccak256("z")];
    }
}
contract Caller {
    uint50 x = 0;
    uint50 y = 1;

    function s1(uint50 _x, uint50 _y) external {

        bytes memory input = abi.encodeWithSelector(x.selector, _x);
        x = call(this, input);
        map(0, _x);
    }

    function s2(uint50 _x, uint50 _y) external {
        bool z;
        if (y == x) {
            uint50 a;
            if (_x == 1) {
                fallback().receive(x);
                revert();
            } else if (_y == 1) {
                a = map(0, _x);
                y = b(a);
                revert();
            }
        } else if (_x!= 1) {
            z = isEven(_x);
        } else if (_y == 1) {
            fallback().receive(x);
            revert();
        } else {
            fallback().receive(bytes4(keccak256("call(address,bytes)")));
            revert();
        }
        y = b(y);
        map(0, _x);
    }

    function s3(uint50 _x, uint50 _y) external {
        y.b_50(x, _y);
        map(0, _x);
