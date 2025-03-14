pragma solidity ^0.8.0;
contract test {
    address _a;
    function set(uint256 x) public {
       uint256 y = x + 5;
    }
    function get() public view returns(uint256) {
        return x();
    }
    function x() public view returns(uint256) {
        return _a;
    }
    function func() public {

        set(get() + 5 - x());
    }
}

pragma solidity ^0.8.0;
contract test2 {
    address _a;
    struct ttt {
       address _address;
    }

    constructor(address x) public {
        _a = x;
    }
    function set(uint256 x) public {
        _a = 0x111;
    }
    function get() public view returns(uint256) {
        return 0x111;
    }
    function x() public view returns(uint256) {
        return 2;
    }
    function func() public {
        set(get() + 5 - x());
    }
contract test3 {
    address _a;
    struct ttt {
       address _address;
    }

    constructor(address x) public {
        _a = x;
    }
    function set(uint256 x) public {

        _a.send(x);
    }
    function get() public view returns(uint256) {
        return 2;
    }
    function x() public view returns(uint256) {
        return _a;
    }
    function func() public {
        set(get() + 5 - x());
    }
}
contract test4 {
    address _a;
    uint256 constant public _y = 0x11;

    constructor(address x) public {
        _a = x;
    }
    function set(uint256 x) public {
        _a.send(_y);
    }
    function get() public view returns(uint256) {
        return _y;
    }
    function x() public view returns(uint256) {
        return _y;
    }
    function func() public {
        set(get() + 5 - x());
    }
}
