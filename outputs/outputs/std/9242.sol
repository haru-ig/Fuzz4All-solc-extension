pragma solidity ^0.8.0;
contract MutatingContract {
    function foo(uint256[][] memory a) public pure {
        delete a[0][0];
    }
}

pragma solidity ^0.8.0;
contract MutatingContract {
    function foo(uint256[1][] memory a) public pure {
        delete a[0][0];
        uint256 n = uint256(a.length);
        bytes9 rtn;
        uint256 x;
        uint256 y;
        for(n;a.length>0; n--) {
            x = a[0][n];
            if(a[0].length > 1 ) y = a[0][n+1];
        }
        bytes9 b = b64;
    }
}

pragma solidity ^0.8.0;
contract ArrayMath {

    function max(uint256 a, uint256 b) public pure returns(uint256) {
        if (a > b) return(a);
        else return b;

    }

    function max(uint256 a) public pure returns(uint256) {
        uint256 x = a;
        return(x);
    }

    function sum(uint256[] memory a) public pure returns(uint256) {
        uint256 x = 0;
        for(uint256 ctr=0; ctr<a.length; ctr++) {
            x += a[ctr];
        }
        return(x);
    }

    function min(uint256 b, uint256 x) public pure returns (uint256) {
        uint256 minX = x;
        uint256 minB = b;
        if(minB < minX) (minB, minX) = (minX, minB);
        return(minB);
    }

    function power(uint256 n, uint256 a) public pure returns(uint256) {
        uint256 x = 1;
        for(uint256 ctr=1; ctr <= n; ctr++) {
            x *= a;
        }
        return(x);
    }

    function div(uint256 x, uint256 n) public pure returns(uint256
