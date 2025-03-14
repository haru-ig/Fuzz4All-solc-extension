pragma solidity ^0.8.0;
contract NewY {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function n(uint256 k) public returns(uint256) {
        uint256 j = k*(2*x + 1);
        j = j*y/(x+y) - k*x*y/(2*x*y-x*x) + k;
        while(j!= (2*(x**2)-(x-y)*(x+y)/(y**2-y))) {
            j = j*(2*x + 1)/x + k + 1;
            j = j/(2*x + x*y) - k*x/2 + k;
        }
        return k;
    }

}
