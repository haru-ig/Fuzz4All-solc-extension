pragma solidity ^0.8.0;
contract Convert {

    function _toHex(uint256 a){
        if(a < 10)
            return "0"+a.toString(16);
        return a.toString(16);
    }
}
