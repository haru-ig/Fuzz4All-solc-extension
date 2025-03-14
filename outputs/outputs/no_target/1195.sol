pragma solidity ^0.8.0;
contract SemanticInjection3
{
    struct D{
        uint256 d1;
        uint d2;
        uint32 d3;
    }

    function semanticInjection1(address x, address y, uint8 v) public pure {
    	D storage dstorage = D(uint64(v));
    }

    function semanticInjection2(uint256 v) public pure {
        uint256[] memory z = new uint256[](1);
    }
}
contract SemanticInjection4
{
    struct D{
        uint x;
        uint y;
        uint v;
    }

    function semanticInjection1(address x, address y, uint8 v) public pure {
    	D storage dstorage = D(uint64(v));
    }

    function semanticInjection2(uint256 v) public pure {
        uint256[] memory z = new uint256[](0);
    }

    function semanticInjection3(uint256 v) public pure {
    	uint256[] memory z = new uint256[](1);
        z = v;
    }

    function semanticInjection4(uint256 v) public pure {
    	uint256[] memory z = new uint256[](2);
        uint[] memory t = new uint[](1);
    }
}
