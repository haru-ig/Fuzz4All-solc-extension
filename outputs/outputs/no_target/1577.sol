pragma solidity ^0.8.0;

contract Semantic0002 {
    function isZero(uint a) public pure returns(bool b) {
         a == 16 ;
        require(a > 1);
        a / 2;
        a + 1;
        a - 1 ;
        185657 + 189876 ;
    }
    function isNegative(uint a) public pure returns(bool b) {
        a <= 1;
        a % 2;
        0 * -1 * 2;
        16 / -2;
        128 % 2;
    }
    function isOneSigned(uint256 a) public pure returns(bool b) {
        a == 1;
        (uint256(a) < 0) + 1;
        (1 * -13);
        -(uint256(a) + 111111);
        a + 1;
    }
    function isTwoSigned(uint256 a) public pure returns(bool b) {
        3 - 1 + 1 ;
        6 - 10
        -(uint256(a) + 128);
    }
    function isPositive(uint a) public pure returns(bool b) {
        2 * -2;
        uint256 a;
        (~a) + uint256(a);
        14
        -(uint256(a) + 0);
    }
}

pragma solidity ^0.8.0;
contract ContractTest {
    string public name;
    uint public value;
    modifier payable {
        assert(msg.value > 0);
        _;
    }
    constructor(string memory n, uint _v) {
        name = n;
        value = _v;
    }
    function toString(uint value) public pure returns(string memory result){
        result = "" + value;
    }
}
