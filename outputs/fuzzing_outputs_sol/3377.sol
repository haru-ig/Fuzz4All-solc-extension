pragma solidity ^0.8.0;
contract S {
    uint256 public x;
    function set() public {
        x = x + 1;
    }
}

pragma solidity ^0.8.12;
contract Caller {

    function test() public payable returns (uint256) {
        S s = new S();
        s.set();
        s.x += 2;
        return s.x;
    }

    function test1() public returns (uint256) {
        S s = S(address(this));
        s.x += 2;
        return s.x;
    }
}
