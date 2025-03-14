pragma solidity ^0.8.0;
contract WrapperContract {
   address payable _receiver;
   address private _caller;
   mapping(bytes4 => Function) public _functions;
   EventLogLog log;
   constructor() public {
       _receiver = payable(0);
       _caller = msg.sender;
       _functions[bytes4(keccak256("data1()"))] =
            function() public payable {
                log();
            }
        _functions[bytes4(keccak256("data2()"))] =
            function() public payable {
                require(payable(address(this)).call.value(msg.value)());
            }
        _functions[bytes4(keccak256("send(uint,bytes32,bytes)"))] =
            function(uint _value, bytes32 _data, bytes calldata _receiver) public {
                _receiver.transfer(_value);
                log();
            }
       log = new EventLogLog();
   }
  modifier onlyCaller() {
        assert(msg.sender == _caller);
        _;
    }
   modifier onlyReceiver() {
        assert(_receiver == msg.sender);
        _;
    }
   function setReceiver(address payable _receiver) public onlyCaller {
       _receiver = _receiver;
   }
   function transfer(uint _value, bytes calldata _receiver) public onlyReceiver {
       _receiver.transfer(_value);
   }
   function send(uint _value, bytes32 _data, bytes calldata _receiver) public onlyCaller {
       _receiver.transfer(_value);
   }
   receive() payable {
        log.addLog("Ether payable forwarded!");
    }
}
pragma solidity ^0.8.0;
interface B {
    function x1() external pure returns (uint);
}
interface C is B {
    function x2() external returns (uint);
}
contract Contract {
   function f1() public {
       uint x = uint(B(address(this)).x1());
       _;
   }
   function f2() public {
       uint x = uint(C(address(this)).x2());
       _;
   }
}
