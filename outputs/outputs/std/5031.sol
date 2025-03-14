pragma solidity ^0.8.0;
contract Mutated2 {
    enum A {
        A1,
        A2
    }
    uint256[] arr = [1, 2, 3];
    uint256 a;
    uint256 b;
    function add() public pure returns (uint256 x) {
        if (a > 0 )
            x = b + a;
    }
    function set(uint256 _a) public {
        a = _a;
    }
    function get() public pure returns (uint256) {
        return a;
    }
}

pragma solidity ^0.8.0;
contract Mutated3 {
    uint256[] arr;
    address[] addr;
    function add() public {
        address[3] memory addrs = [0x0000, 0x0000000000000000000000000000000000000000, 0x000000000000000000000000000000000000000];
        arr.push(0);
        arr.push(1);
        addr = addrs;
    }
}
