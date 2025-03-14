pragma solidity ^0.8.0;
interface IArray2 {
    function count() external view returns (uint);
    function get(uint row, uint col) external view returns (uint);
    function set(uint  row, uint  col, uint  ) external returns (uint  );
    function append(uint  row, uint  col) external returns (uint);
    function min(uint  row, uint  col) external returns (uint);
    function max(uint  row, uint  col) external returns (uint);
    function sum(uint  row, uint  col) external returns (uint);
    function sort(uint  row, uint  col) external returns (uint);
    function get(uint  ) external view returns (uint);
    function set(uint  row, uint  col, uint  ) external returns (uint  );
    function append(uint  ) external returns (uint);
    function min() external view returns (uint);
    function max() external view returns (uint);
    function sum() external view returns (uint);
    function sort() external returns (uint);
    function store(bytes memory _data) external;
    function getAddressOf(uint  row, uint  col) external view returns (address);
}
contract Array1 is IArray1 {
}
contract Array2 is IArray2 {
}
