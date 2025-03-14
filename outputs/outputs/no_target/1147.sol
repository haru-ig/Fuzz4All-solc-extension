pragma solidity ^0.8.0;
contract SemanticMutation17
{
    function a(uint256 n1) public view {
        add(n1,n1);
    }
    function a(int128 n2) public view {
        add(n2,0);
    }
    function a(uint256 n3) public view {
        add(0,n3);
    }
    function a(uint8 n4) public view {
        add(7,uint285910);
    }
    function a(int154 n5) public view {
        add(int2985,int2985);
    }
    function add(uint256 x, uint256 y) internal pure returns(uint256) {
        return x+y;
    }
}

pragma solidity ^0.8.0;
contract SemanticMutation19
{
    function f() public {
        test(uint64(-1));
        test(0);
        test(uint8(-1));
        test(uint16(1));
        test(uint16(-1));
        test(uint32(4294967295));
        test(uint32(4294967296));
        test(uint64(420090000));
        test(uint64(-200900000));
        test(uint8(1));
        test(uint8(-1));
        test(uint16(4294967295));
        test(uint16(4294967296));
        test(uint32(uint32(4294967295)));
        test(uint32(uint32(4294967296)));
        test(uint64(uint64(4294967295)));
        test(uint64(uint64(4294967296)));
        test(uint4
