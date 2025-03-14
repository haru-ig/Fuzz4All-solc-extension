pragma solidity ^0.8.0;
interace IMultiprecision is ISaveable {

    function add(uint256,uint256) external view returns (uint256);

    function sub(uint256,uint256) external view returns (uint256);

    function mul(uint256,uint256) external view returns (uint256);

    function div(uint256,uint256) external view returns (uint256);
}
