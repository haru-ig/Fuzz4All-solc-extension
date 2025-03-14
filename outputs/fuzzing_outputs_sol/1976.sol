pragma solidity ^0.8.0;
mapping (address => uint32) public _value;
contract Mutater4 {
    uint32 internal _value;
    fallback() external payable {
        assembly {
            _value[]._value
            mstore(0x40, mload(0x40))
        }
    }
}
contract FallbackWithFallback3 {
    address internal _address;
    fallback() external withFallback {
        _address = msg.sender;
    }
    fallback() external {}
    receive() external payable {}
}
contract Caller {
    Mutater3 public tester;
    Mutater4 public tester2;
    FallbackWithFallback3 public caller;
    uint32 public value;
    function mutater() public {
        _value.push(1);
        value = _value[1];
    }

    function mutater2() public {
        tester = new Mutater3();
        tester2 = new Mutater4();




        caller = new FallbackWithFallback3();

    }
    function lowLevelCall() public payable {
        uint[8] memory _val = [1,1,1,1,1,1,1,1];
        uint[2] memory _val2 = [1,1];
        uint[5] memory _val3 = [1,1,1,1,1];
        uint[5,9,5] memory _val4 = [1,1,1,1,1,1,1,1,1,1,1,1,1];
        _val[2][3]=1;
        tester.send(_val);
        tester.send(_val2);
        tester.send(_val3);
        tester.send(_val4);
        caller.fallback();
        address payable _address = address(uint(0xfe));
    }
}
