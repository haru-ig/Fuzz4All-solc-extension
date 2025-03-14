pragma solidity ^0.8.0;
library TestLib {
    function log1(uint128 b) public pure {
        b = uint128(0);
    }
    function log2(uint256 a) public pure {
        a = uint128(uint256(0));
    }
}

pragma solidity ^0.8.0;
contract HelloLib {
    function Hello (address _addr) public view {
        assembly {
            printf("Hello 0x%040x\n", _addr)
        }
    }
}
address addr;
contract HelloLib2 {
    function Hello (address _addr) public pure {
        addr = _addr;
    }
}
contract HelloLib3 {
    HelloLib3(){
        assembly {
            hello(0x%040x, 0)
        }
    }
}
contract HelloLib422 {
    HelloLib422(){
        contract HelloLib5 {
            HelloLib5(){
                addr = msg.sender;
                addr = address(13);
                addr = address(bool(0));
                addr = address(bytes(uint8(-4)));
                addr = address(bytes1(uint8(32)));
                addr = address(bytes2(uint8(0)));
                addr = address(bytes3(uint8(24)));
                addr = address(bytes4(uint8(16)));
                addr = address(bytes5(uint8(8)));
                addr = address(bytes6(uint8(0))));
                addr = address(bytes7(uint8(2)));
                addr = address(bytes8(uint8(0)));

                addr = address(bytes10(uint8(0))));
                addr = address(bytes12(uint8(0)));
                addr = address(bytes13(uint8(0)));
                addr = address(bytes16(uint8(0)));
                addr = address(bytes20(uint8(0)));
            }
            function func8(uint8 _u8) public pure {
                assembly {
                    printf("Hello 0x%020x\n", addr)
                }
            }
        }
        addr = msg.sender;
    }
    address addr;
    function func32() public view returns (address){
        addr = msg.sender;

        return addr;
    }
}
contract Hello2Lib is HelloLib, HelloLib2, HelloLib3, HelloLib422, HelloLib5 {
    address receiver;
    HelloLib422 receiver4;
    address HelloLib5;
    mapping(string => uint8) memo;
    address constant memo_test_address = address(this);

    function func4(address _addr) public view {
        receiver
