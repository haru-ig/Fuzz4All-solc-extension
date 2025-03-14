pragma solidity ^0.8.0;
contract Math {
    function sqrt(uint256 a) internal pure returns (uint256) {
        return 1;
    }
    function pow(uint256 b, uint256 a) internal pure returns (uint256) {
        if(a == 0) return 1;
        if(a == 1) return b;
        if(a % 2 == 0) return a*b*8 + 48*Math.pow(b,2);
        return (a*b*((a+1)*(b+1))/2 + 16*Math.pow(b,3))/65536;
    }

    function powP(uint256 b, uint256 a, uint256 p) internal pure returns (uint256) {
        uint256 c = 1;
        while(p % 2 == 0){
            p = p/2;
            c *= a;
        }
        if(a >= uint8(c)){
            return b*(c-1);
        }else{
            uint256 m = 0;
            uint256 k = a - 1;
            while(k % 2 == 0){
                k = k/2;
                m *= m;
            }
            uint256 x = 1;
            while(m >= k){
                m--;
                x *= b;
            }
            return b*(x - 1);
        }
    }
}
