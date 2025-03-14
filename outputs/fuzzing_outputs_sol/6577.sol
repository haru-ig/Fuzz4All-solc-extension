pragma solidity ^0.8.0;
contract Caller {

    bool public flag;

    function set_flag(bool _flag) public {
        flag = _flag;
    }

    function set() public view returns(bool) {
        uint256 x = SimpleStorage.set(37);
        require(x == 37);
        uint8 a = 0;
        uint16 b = a;
        a += 1;
        return flag;
    }
}
