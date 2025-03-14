pragma solidity ^0.8.0;


pragma experimental ABIEncoderV2;
interface Greeter {
    function greet() external view returns (string memory);
    function greetTo(address user) external view returns (string memory);
}
contract GreeterContract {
    Greeter Greeter = Greeter(0xaA5567B7cE551C17761052A1C2EFE784E7D26F50);

    function greet() external view returns (string memory) {
        return Greeter.greet();
    }

    function greetTo(address user) external view returns (string memory) {
        return Greeter.greetTo(user);
    }
}
pragma solidity ^0.8.0;
contract Mutator2 {}
contract Mutator8 is Mutator2 {
    constructor(uint _num) {
        data.h = _num;
    }
    function modify() public {
        data.h += 1;
    }

    function modify2() public {
        data.h += 1;
        data.h += 1;
    }
    function modify3() public {
        bytes32 x = keccak256(abi.encodePacked(0xF0F1F2F3));
        data.h += 1;
        data.h += x[1];
    }
}

pragma solidiy 0.8.0;
contract Mutator7 {
    constructor(uint _num) {
        data.h = _num;
    }

    function g() public pure returns(bytes memory) {
        bytes memory buffer = new bytes(32);
        buffer[0]=0xF0;
        buffer[1]=0xF1;
        buffer[2]=0xF2;
        buffer[3]=
