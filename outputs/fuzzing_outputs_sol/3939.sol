pragma solidity ^0.8.0;
contract Example16 {
    function setMaxUint256()
        public
    {
        uint256 x = uint256(2**256);
    }

    function getMaxUint256()
        public
        returns(uint256)
    {
        return uint256(2**256-1);
    }

    function test1(uint256 x)
        public
        returns(uint256)
    {
        require(x < 2**256, "Error");
        return x;
    }

    function test2(uint256[3] memory w)
        public
        returns(uint256,uint256[3])
    {
        uint256 x1 = uint256(2**256);
        uint256 x2 = w[1];
        uint256 x3 = w[0];
        uint256 x4 = uint256(2**256);
        uint256 w1 = x2*w3*x + x - x1;
        uint256 w2 = x2*x + x + x;
        uint256 w3 = uint256(2**256);
        return (x4,w1);
    }
}
