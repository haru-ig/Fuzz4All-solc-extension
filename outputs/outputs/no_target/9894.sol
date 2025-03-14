pragma solidity ^0.8.0;
interface i {
    function m() external pure returns (uint x);
}

interface a {
    function f() external view returns (uint);
}



pragma solidity ^0.8.0;
interface i {
    function m() external pure returns (uint x);
    function z() external pure returns (uint);
}
