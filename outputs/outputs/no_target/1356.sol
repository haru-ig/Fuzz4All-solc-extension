pragma solidity ^0.8.0;
contract Mutate_0010 {
    function setX(uint _x) public pure returns(int) {
        return _x;
    }
}
contract Mutate_0011 {
    function setX(uint _x) public pure returns(address) {
        return address(address(uint160(_x)));
    }
}
contract Mutate_0012 {
    function setX(uint _x) public pure returns(uint8) {
        return uint8(_x);
    }
}
contract Mutate_0013 {
    function setX(uint _x) public pure returns(uint) {
        return uint(_x);
    }
}
contract Mutate_0014 {
    function setX(uint _x) public pure returns(uint8) {
        return uint8(_x >> 8);
    }
}
contract Mutate_0015 {
    function setX(uint _x) public pure returns(address) {
        return address(uint160(_x >> 8));
    }
}
contract Mutate_0016 {
    function setX(uint _x) public pure returns(uint128) {
        return uint128(_x >> 8);
    }
}
contract Mutate_0017 {
    function setX(uint _x) public pure returns(uint) {
        return uint(_x + 1);
    }
}
contract Mutate_0018 {
    function setX(uint _x) public pure returns(uint) {
        return uint(_x & 0xFF);
    }
}
contract Mutate_0019 {
    function setX(uint _x) public pure returns(uint) {
        return uint(_x << 8);
    }
}
