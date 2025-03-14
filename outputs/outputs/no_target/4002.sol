pragma solidity ^0.8.0;
 interface IA { function f(bytes memory) external; } contract C { bool public b; IA public d; }

pragma solidity ^0.8.0;
interface IX { function f(bytes memory) external; } contract C { bool public b; IX public d; }

pragma solidity ^0.8.0;
interface IY { function f(bytes memory) external; } contract C { bool public b; IY public d; }
pragma version ^0.9.0;
