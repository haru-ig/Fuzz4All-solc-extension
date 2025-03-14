pragma solidity ^0.8.0;
interface MutatorInterface {
    function add(address x, address y) external returns (uint256 z);
}
interface MutatorInterface2 {
    function subtract(address x, address y) external returns (uint256 z);
}
address[] a;
uint256[] b;
uint256 i;


pragma solidity ^0.8.0;
interface MutatorInterface {
    function subtract(uint256 x, uint256 y) external returns (uint256 z);
}

pragma solidity ^0.8.0;
contract MutatorInterface2 is MutatorInterface {

    function subtract(uint256 x, uint256 y) internal returns (uint256 z) {
        z = x - y;
    }
}
contract MutatorInterface3 is MutatorInterface2 {

    function subtract(uint256 x, uint256 y) internal virtual returns (uint256 z) {
        z = x - y;
    }
}
contract MutatorInterface4 is MutatorInterface3 {
