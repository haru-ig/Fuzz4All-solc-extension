pragma solidity ^0.8.0;
contract mutator6{
    uint[10000*100] private nonces;
    constructor () public {}
    function() public returns(uint x){
        uint p = nonces[_];
        nonces[p] = p+1;
        return p+x;
    }
    function _getNonce() internal returns(uint) {
        uint s = noicelimit();
        if (s!= 0) {
            uint nonce = noncepool();
            uint x = noicelimit();
            if (x == s) {
                return s;
            }
            nonces[nonce] = x+1;
            return x;
        }
        return 0;
    }
}
