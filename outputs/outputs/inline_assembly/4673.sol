pragma solidity ^0.8.0;
contract mutator84 {
    function mutatorTest() public {
        uint s;
        assembly {
            s := z
        }
        require(s == 20  );
    }
    }

    pragma solidity ^0.8.0;
    contract mutator85 {
        function mutatorTest(uint _x) public {
            if (keccak256(abi.encode(_x)) == keccak256(abi.encode(20))) {
            z = 10;
            require(z == 10);
            }
        }
    }

pragma solidity ^0.8.0;
    contract mutator86 {
        function mutatorTest() public {
            s := z;
        }
    }


code was added here 19/October/2021
