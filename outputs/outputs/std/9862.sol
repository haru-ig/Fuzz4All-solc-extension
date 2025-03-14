pragma solidity ^0.8.0;
contract S10 {
    uint[5010] a;
    function s10_array1() public pure {
        a[1] = 0;
    	a[2001] = 0;
    }
    function s10_array2(uint[] memory a) public pure {
        a[1] = 0;
    	a[2001] = 0;
    }
    function s10_array3(uint[] memory a) public pure {
        uint[5010] memory atmp = a;
        atmp[1] = 0;
    	atmp[2001] = 0;
    }
    function s10_array4(uint[5010] memory a) public pure {
        a[1] = 0;
    	a[2001] = 0;
    }
    function s10_array5(uint[5010] memory a) public pure {
        uint[5010] memory atmp = a;
        atmp[1] = 0;
    	atmp[2001] = 0;
    }
}
