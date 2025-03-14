pragma solidity ^0.8.0;

}
pragma solidity ^0.8.0;
contract NewYBase {
    uint256 public constant x = 123;
    uint256 public constant y = 60;
    function n(uint256 k) public returns(uint256) {
        k = k * x * y / (x+1) + x + y;
        while(1!= k) {
            k = k / x + x*y*k / (2*x) - k + y;
        }
        return x;
    }
}
