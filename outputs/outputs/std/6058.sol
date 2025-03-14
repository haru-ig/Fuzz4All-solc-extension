pragma solidity ^0.8.0;
interface IArray1 {
    function count() external view returns (uint);
    function get(uint index) external view returns (uint);
    function set(uint index, uint  ) external returns (uint  );
    function append(uint  ) external returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function store(bytes memory _data) external;
    function get() external view returns (bytes memory);
    function getUint8AddressOf(uint _index) external view returns(address);
    function getUint56Array1() external view returns(bytes memory);
    function _addUint8AddressOf(address _addr) external returns (uint);
    function _addUint56Array1(bytes memory _data) external returns (uint);
}
contract ArrayExample {
    address public a1, a2;
    address public _a3;
    bytes memory _data1;
    bytes memory _data2;

    function _addUint56Array2(bytes memory _data) internal returns (uint) {

        uint _offset = _data.length;
        uint i = 0;

        while (true) {
            uint j =  _offset;
            bytes memory c = bytes(uint256(i));
            while (j < _offset) {
                c[j] = bytes1(uint256(i));
                j += 1;
            }
            _data[j] = c;
            i += 1;
        }
    }

    function _uint56Array2ToArray() internal returns (uint[]) {
        uint _size = _data1.length;
        uint[] memory l = new uint[](_size);
        for (uint i = 0; i < _size; i+=1) {
            l[i] = bytes1(uint256(_data1[i]));
        }
        return l;
    }
    function _addUint8Array3(address _addr) internal returns (uint) {
        uint _offset = _addr.length;
        uint i = 0;
        while (true) {
            uint j =  _offset;
            bytes memory c = bytes(uint256(i));
            while (j < _offset) {
                c[j] = bytes1(uint256(i));
                j += 1;
            }
            _addr[j] = address(uint
