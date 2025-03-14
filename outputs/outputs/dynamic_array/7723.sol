pragma solidity ^0.8.0;
contract Test3_4{
        function f(uint _x) public {
            uint8 _y;
            assembly {    _y := mload(_x)}
            require(_y == 257,[string(_y)]);
        }
    }
pragma experimental ABIEncoderV2;
contract Test3_5{
        function f(uint8 _x) public {
            uint8 _y;
            assembly {    _y := mload(add(_x, 4))}
            require(_y == 257,[string(_y)]);
        }
    }
contract Test3_6{
    fallback() external payable {
    }
}
contract Test3_7{
        struct V{
            uint x;
        }
        V x;
        function f() public {
            uint8 _y;
            assembly {    _y := mload(add(x, 4))}
            require(_y == 1,[string(_y)]);
        }
    }
pragma experimental ABIEncoderV2;
contract Test3_8{
        function f() public {
            uint8 _y;
            assembly {    _y := mload(add(x, 4))}
            require(_y == 1,[string(_y)]);
        }
    }
contract Test3_9{
        bytes8[5] a;
        function f() public {
            uint8 _y;
            assembly {    _y := mload(add(a, 5))}
            require(_y == [1, 2, 3, 4, 5]);
        }
    }

pragma solidity ^0.8.0;
contract Test4_1{
        uint256[1] p1;
        uint256[1] p2;
        uint256[2] p3;
        uint256[2] p4;
        bool a;
        function f()
