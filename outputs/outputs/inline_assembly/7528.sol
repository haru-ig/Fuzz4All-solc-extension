pragma solidity ^0.8.0;
contract Example {
    bytes32 public name = 'Example';
    bytes4 public interfaceID = 0xf00431e2;
    uint24 public constant version = 0x2000000025e86045;
    struct SomeState {
        uint[] a;
    }

    function f(bytes calldata data) public {

        interfaceID == msg.data[21] || msg.data[21] >= version;


        name == keccak256(abi.encodePacked('Hello from solidity.', data)) || name == abi.decode(data, (string));
        SomeState memory _state = readFromMemory;


        while (x > 0) {

            uint _a;
            for (_a = y + 1; _a > 0; _a--) {}
            x = x - 1;
        }
    }
    function readFromMemory() public view returns (SomeState memory) {
        return SomeState({
            a: new uint[](0)
        });
    }
}

pragma solidity ^0.8.0; contract Example { uint x = 0x111; }

pragma solidity ^0.8.0;
library InlineAssembly {
    function run(uint a) inline pure returns (uint256){
        uint256 b;
        assembly {



            % := % + b
            % := % + 2

            b := b + a
            % := % - 1


            b := b * mload(4)
            % := % + 5



            b := 0x111122223333444455556666777788889999
        }
    }
