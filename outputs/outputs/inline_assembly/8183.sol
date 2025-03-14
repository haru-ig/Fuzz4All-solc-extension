pragma solidity ^0.8.0;
contract Mutated {
    uint256 public a;
    uint256 public b;
    address public c;
    constructor (address _c) public {
        c = _c;
        a = 1;
        b = 2;
    }
    uint256 getSum() public view returns(uint256) {
        return a+b;
    }
    function incrementAndGetSum() public returns (uint256) {
        a = a+1;
        b = b+2;
        return getSum();
    }
    function payFor(uint256 _amount) public {
        (bool sent, ) = c.call{value:_amount}("");
        if (!sent)
            assert(false);
    }
}
