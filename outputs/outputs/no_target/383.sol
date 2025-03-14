pragma solidity ^0.8.0;
contract Semantic3Changed {
    uint256 x = 46;
    function balance2() public pure {
        uint256 y = 47;
        uint256 z = -46;
        require(z >= -46, "test");
    }
}

pragma solidity ^0.8.0;
contract Semantic4Changed {
    function balance2() public pure {
        uint256 y = 47;
        uint256 z = -46;
        if (z!= 51) {

        } else {
            uint20 _x = 47;
            uint29 _y;
            bool _z;
            uint2 _z0;
        }
    }
}
