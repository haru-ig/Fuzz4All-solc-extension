pragma solidity ^0.8.0;
contract InlineAssembly4{
    function test() public pure returns(bool) {
        uint a = 0;
        assembly {
                {
                    a := add(a, 1)
                    a := a + 1
                }
        }
        return a;
    }
}

pragma solidity ^0.8.0;
contract InlineAssembly5{
    function test() public pure returns(bool) {
        bytes memory b = "This is my very first Solidity code :(";
        assembly {
            let myNumber := b
            myNumber := myNumber.slice(2, 15)
            thisCopy := add(18, 1000000000000000000000000000000)
            myNumberCopy := and(myNumber, myNumber)
            return myNumberCopy
        }
    }
}
pragma solidity ^0.8.0;
contract InlineAssembly6{
    function test() public pure returns(bool) {
        uint256 x = 1;
        memory memory memoryX;
        assembly {
            switch x {
                case 0 {
                    x := 1
                    switch(eq(x, 1)) {
                        case 1 {
                            create_storage()
                            _switch(x, memoryX)
                            switch(eq(x, memoryX.id)) {
                                case 1 {
                                    drop_storage
                                }
                            }
                        }
                    }
                }
            }
        }
        memoryX.id;
    }
}
function __create_storage() public {
    bytes memory memoryX;
    assembly {
        memoryX := mload(0x40)

        create_storage()
        _switch(x, memoryX)
        switch(eq(x, memoryX.id)) {
            case 1 {
                drop_storage
            }
        }
    }
}
function _switch(uint1 x, memory storage memoryX) public {
    bytes memory memoryXCopy = new bytes(3);
    assembly {
        mstore(memoryXCopy, memoryX)
    }
    memoryX.id;
}
function __drop_
