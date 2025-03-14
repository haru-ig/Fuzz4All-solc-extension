pragma solidity ^0.8.0;
interface IMyInterface {
    function x() external pure returns (uint);
}
contract CMyInterface is IMyInterface {
    function x() external pure returns (uint) {
        return 3;
    }
}

pragma solidity ^0.8.0;
contract C010_Functions_ParametersTypes_ReturnsTypes {
    function f1(uint x) external pure returns (uint y);
    function f2(uint y) public pure returns (uint x);
    function f3(uint x, bool b1, bool b2, bool b3, bool b4) public pure returns (uint y, uint y2);
    function f4(uint x, bool b1, int b2) public pure returns (bytes32, int, bytes32);

    function f5(uint x, bool b1, int b2) public pure returns (uint, bool);
    function f6(uint x) external pure returns(bool b);
    function f7() public pure returns(uint, bytes32 y2, bytes32 y, address x);
}
