pragma solidity ^0.8.0;
interface Array {

    function length(uint256) external view returns (bool);



    function isPositive(uint256 index) external view returns (bool);





    function sumArray(uint256[] memory elements) external view returns (uint256);





    function sumArray(uint256[] memory elements, uint256[] memory indices)
        external
        view
        returns (uint256);


    function min(uint256[] memory array) external view returns (uint256);


    function elementAt(uint256 array[], uint256 index) external view returns (uint);


    function set(uint256 array[], uint256 index, uint value) external;



    function get(uint256 array[], uint256 index) external view returns (uint);



    function sort(uint256[] memory array) external;
}
