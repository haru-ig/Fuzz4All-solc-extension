pragma solidity ^0.8.0;
contract Mutated1 {
    uint256 public x;
    constructor() public {
        x = 3;
    }
    function get() public view returns (uint256) {
        return x;
    }
    function plus(uint256 y) public returns (uint256) {
        return x + y;
    }
    function plusWrong(uint256 y) public returns (uint256) {
        uint256 z = x + y;
        require(_moreValid(z), 'wrong');
        return z;
    }

    function plusCorrect(uint256 y) public returns (uint256) {
        uint256 z = x + y;
        require(!_moreValid(z), 'correct');
        return z;
    }

    function nothing() public {

    }*/

    function _moreValid(uint256 z) private pure returns (bool) {
        return x > z;
    }
}
contract Mutated2 {
    function get() public view returns (uint256) {
        return 2;
    }
}
contract Caller {
    uint256 public x;
    function call1Contract() public {
        require(x == 3,'missing one');
        Mutated1 m1 = new Mutated1();
        Mutated1 m2 = new Mutated2();
        uint256 y = m1.plus(5);
        uint256 z = m1.plusWrong(6);
        uint256 x0 = m1.get();
        uint256 y0 = m2.get();
        require(x0 == 5 && y0 == 2 || x0 == 3 && y0 == 2, 'wrong');
    }
    function call2Fallback() public {
        require(x == 3,'missing one');
        Mutated1 m1 = new Mutated1();
        Mutated2 m2 = new Mutated2();
        uint256 y = m1.plus(5);
        uint256 wrong = m1.plusCorrect(6);
        uint256 x0 = m1.get();
        uint256 y0 = m2.get();
        require(x0 == 5 && y0 == 2, 'wrong');
    }
    function call3LowLevel(uint256 a, uint256 b) public pure returns (uint256) {
        return uint256(a + b);
    }
    function call4Receive(uint256 a) public payable returns (uint256) {
        x = a;
        return uint256(a);
    }
}
