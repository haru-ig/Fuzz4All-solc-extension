pragma solidity ^0.8.0;
library Test388Library {
    bytes32 constant X = abi.encode("Bytes32Constant");
}
interface Test230Interface {
    pragma solidity ^0.8.0;
    function test36() external;
}
contract Test230Solidity {
    function test35(bytes32 test1, bytes32 test2, bytes32 test3, bytes32 test4, bytes32 test5) public {
        (  Test230Interface(Test230Library.X)).test36();
    }
}
