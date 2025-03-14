pragma solidity ^0.8.0;
contract modulator7{
    uint256 public M;
    uint256 public N;
    uint256 public D;
    uint256 public x;
    uint8 public value;
    constructor(uint256 _M, uint256 _N, uint256 _D, uint256 _x) {
        M = _M;
        N = _N;
        D = _D;
        x = _x;
        value = 0;
    }
    function test() public {
        (bool b, uint256 x_new, ) = modulate7({
            m_M:M,
            n_N:N,
            d_D:D,
            x_x:_x,
            a_a:value});
        if (b) {
            x = x_new;
        }
        else
        require(false);
        (bool, bytes memory log) = logs();
        if (A == 0) {
            require (bytesToString(log).equal("\x6000000000000000000000000000000000000000"));
        } else {
            if ( A == 1 << 56) {
                require (bytesToString(log).equal("\x600000000000000000000000000000000000000"));
            } else {
                require (bytesToString(log).equal("\x60000000000000000000000000000000000000000"));
            }
        }
    }
    function logs() public public view returns(bool b, bytes memory log) {
        assembly {
            mstore(0x0, %returnData)
            mstore(add(128, %returnData), %returnData)
            return(eq(mload(0x0), 0x0), mload(add(128, %returnData)))
        }
    }
    function bytesToString(bytes memory input) public pure returns(string memory) {
        if (input.length == 0) return "";
        uint256 size = 0;
        for (uint256 i = 0; i < input.length; i++) size = size + 1;
        size = size + 1;
