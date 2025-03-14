pragma solidity ^0.8.0;
contract Caller {
    address public senderAddress;
    address public targetAddress;
    address[] chain;
    uint256 public expected;
    constructor () {
        chain.push(tx.origin);
        required();
    }
    function required() public payable {}
    function call () public payable {
        chain.push(targetAddress);
        chain[chain.length-1].transfer(msg.value);
    }
    function send () public payable {
        senderAddress.transfer(msg.value);
    }
    function execute (bytes memory data) public {
        targetAddress.call{value: msg.value}(data);
    }
    function receive (bytes memory data) public {
        memory memoryData = abi.encodeWithSignature("receiveData()", data);
        require(msg.sig == "receiveData()" || msg.sig == "receive()");
        store();
        targetAddress.transfer(address(new uint160(abi.encodeWithSignature("fallback()", data))));
    }
    function transfer (address to) public {
        to.transfer(expected);
    }
    function fallback () public payable {
        require(msg.value == expected);
        chain.push(targetAddress);
        chain[chain.length-1].acceptEthers();
    }
    modifier requiresData() {
        require(msg.data.length!= 0);
        _;
    }
    modifier isCaller () {
        require(msg.sender == senderAddress);
        _;
    }
    function sendToLast () public isCaller {
        require(chain.length!= 0);
        required();
        payable(chain[chain.length-1]).send(msg.value);
    }
    function store () public {
        expected = msg.value;
    }
    function executeLast () public isCaller {
        require(chain.length!= 0);
        targetAddress.acceptEthers();
        targetAddress.transfer(address(new uint160(abi.encodeWithSignature("fallback()", "execute(data)")))));
    }
    function executeLastTo (address to) public isCaller {
        require(chain.length!= 0);
        to.transfer(expected);
    }
    function executeLastWithData (bytes memory data) public isCaller {
        require(chain.length!= 0);
        targetAddress.acceptEthers();
        targetAddress.transfer(address(new uint160(abi.encodeWithSignature("fallback()", "executeWithData(data)")))));
    }
    function executeLastToWithData (address to, bytes memory data) public isCaller {
        require(chain.length!= 0);
        to.transfer(expected);
    }
}
