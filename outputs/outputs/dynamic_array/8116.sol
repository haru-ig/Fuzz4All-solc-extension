pragma solidity ^0.8.0;
interface I {
   function f(bytes memory) external;
}
contract Test {
    constructor() {
        bytes memory param = new bytes(0);
        param = new bytes(0);
        I(_msgSender()).f(param);
    }
}
