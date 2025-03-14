pragma solidity ^0.8.0;
contract Mutators7 {
    uint X = 10;
    function multiplyBy (uint x) internal view returns (uint) {
        uint result = X * x;
        if(result>50000 || result<int256) X=0;
        return result;
    }
    function subtractBy (uint x) external {
        uint X = multiplyBy(x);
        X=X-1;
        if(X<=0)return;
        X = 1;
        while(X>0) {
            X = multiplyBy(X);
        }
    }
}
