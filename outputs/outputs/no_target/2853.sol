pragma solidity ^0.8.0;
contract oldStorage {
    uint b;
    mapping (uint => uint) storage s;
    function check(uint _val) public view  {
        uint _b = s[b];
        if (b >= _val) {
            b += 1;
        }
        emit check(b, _val, _b);
        bytes memory _x;
        assembly { _x := _val }
        return;
    }
    function create(uint _val) public {
        s[b] = _val;
    }
}
contract test {
    uint val;
    function do() public {
        (val,) = assembly { ret(0x1) }
    }
}
