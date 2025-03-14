pragma solidity ^0.8.0;
contract Example10 {
    bytes32[] public result;

    function a() public pure {
        result = new bytes32[](0);
    }

    function b() public pure {
    }

    function c() public pure {
    }

    function callExample() external pure {
        Example10 example = new Example10();
        address payable caller = payable(msg.sender);
        address payable receiver = address(uint160(caller));
        Example9 example9 = address(uint160(caller));
        Example9 example9caller = address(uint160(caller));
        example.example9(example9caller);
        example.example9(example);
        example.example9(example9);
        example.example9(receiver);
        bytes calldata bytes2 = "Hello".bytes();



        uint[] memory storage = new uint[](13);
        Example10 example10 = new Example10();
        try example10.a() {
            storage[4] = uint160(caller);
            bytes memory byte2 = "Hello";
        } catch {
            storage[12] = uint160(caller);
        }
        uint[16][] storage slice = new uint[2][];
        bytes2 = "Hello";
    }

    pure struct Data1 {
        bytes2 mSize;
    }
    function f1(Data1 memory _mem) public pure {

        string memory memStr = "Hello";
    }

    function g1(bytes memory _mem) public pure {

        bytes str = "Hello";
        address payable addr;
        struct {
            bytes4 mMagic;
            bool mZero;
            bool mZeroOne;
            bool mOne;
            bool mTwo;
        } v;
    }
}
