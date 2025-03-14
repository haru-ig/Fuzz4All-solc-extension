pragma solidity ^0.8.0;
contract newY {
    uint256 public constant x = 123;
    uint256 public constant y = 0;
    function n(uint256 k) public returns(uint256) {
        k = k * (x*(y-x)) / 2 + (y-x) - y + 1;
        while((k / (x - n*(2*k+1)/(x-y)) > n)||((k/2 - n*(k+1)/(x-2*k-1))/x<=k-(n-k)*(x-1)-y))
        {
            k =(k * (x*(y-x))) / 2 + (y-x) - y + 1;
        }
        return 0;
    }
}
