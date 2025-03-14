pragma solidity ^0.8.0;
contract A20 {

    function do() public payable {}
}

pragma solidity 0.8.0;
import "../../build/A20.sol";
contract Test {
    function contractTest() public {
        C20 c10 = new C20();
        c10.do();


        A20 a20 = new A20();
        a20.do();
    }
}
