pragma solidity ^0.8.0;
interface IMyInterface {
    function test() returns(string memory) view;
}
contract ComplexInterface {

    function test() public view returns(string memory) {

    }
}
pragma solidity ^0.8.0;
contract SimpleInterface9 {
    assembly {
        IMyInterface myContract := create(0x0)
    }
    function test() public view returns(string memory) {

    }
}
pragma solidity ^0.8.0;
library InlineAssembly9 {

    function test() public view returns(string memory) {

    }
}
pragma solidity ^0.8.0;
library InlineAssembly9 {

    function test() public view returns(string memory) {

    }
}
pragma solidity ^0.8.0;
contract InlineAssembly10 {
    function test() public pure returns(string memory) {


    string memory s = hex"60545752313030";



    assembly {
            s := add(s, 0x18)
        }
        return s;

    }
}
