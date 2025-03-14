pragma solidity ^0.8.0;
interface IArray {
    function length() external view returns (uint);
    function get(uint index) external view returns(uint);
    function set(uint index_, uint val) external;
    function append(uint val) external;
    function push(uint val) external;
    function pop() external;
    function sort() external;
    function popMax() external view returns (uint);
    function popMin() external view returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function reverse() external;
    function add(uint x, uint y) external view returns (uint);
    function sub(uint x, uint y) external view returns (uint);
    function mul(uint x, uint y) external view returns (uint);
    function div(uint x, uint y) external view returns (uint);
    function idiv(uint x, uint y) external view returns (uint);
    function mod(uint x, uint y) external view returns (uint);
    function sub1(uint x, uint y) external view returns (uint);
    function sub8(uint x, uint y) external view returns (uint);
    function divCeil(uint x, uint y) external pure view returns(uint);
    function divFloor(uint x, uint y) external pure view returns(uint);
    function modCeil(uint x, uint y) external pure view returns(uint);
    function modFloor(uint x, uint y) external pure view returns(uint);
    function mulCeil(uint x, uint y) external pure view returns(uint);
    function mulFloor(uint x, uint y) external pure view returns(uint);
}
