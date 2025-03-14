pragma solidity ^0.8.0;
interface MixedContactsExample102Interface {
    function doesSomething() external returns (bool);
    function someOperation() external returns (uint56, uint64);
}
contract MixedContactsExample102 {
    uint x;
    uint56 a;
    uint y;
    uint56 b;
    event SomeEvent(uint value);
    function doSomething() public returns (uint64) {
        a = a + a * 44;
        x = x * 3;
        if (x!= 0) {
            x = x * 2;
        } else {
            return;
        }
        b = b * 7;
    }
}




pragma solidity ^0.8.0;
contract AInterface {
    function someOperation() external returns (uint56);
}
contract BInterface {
    function someOperation() external returns (uint);
}
contract A is AInterface {
    function someOperation() public pure returns (uint56) {
        return 73;
    }
}
contract B is BInterface {
    function someOperation() public view returns (uint) {
        require(someOperation() == 73, "Not 73");
        return 87;
    }
}
uint56[100] memory a;
uint[100] memory b;
uint64[100
