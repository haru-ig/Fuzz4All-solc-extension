pragma solidity ^0.8.0;
contract CallFallbackFunctionTwoPlusFallback0 {
    EtherContract erc = new EtherContract();
    constructor() payable
    {
        assembly {
            sstore(add(0, 0), 1)
        }
    }
}

contract FallbackWithCalls {
    bytes32 internal constant FALLBACKREASON = keccak256("Fallback with call data");
    bytes32 internal constant ERC20_TO = keccak256("ERC20TransferWithFail.transfer");
    bytes32 internal constant ERC20_FROM = keccak256("ERC20TransferWithFail.transferFrom");
    uint internal constant NOFALLBACKFUNCTION = 2;



    address internal _caller;

    constructor () {

        _caller = msg.sender;
    }

    function foo() public pure
    {

        fallback(address(0));
    }



    receive() payable {

        require(msg.value >= 0.1 ether);

    }


    function foo2() public pure
    {
        uint internal storage storagePtr = _caller;
        require(bool(storage(storagePtr)));
    }


    function foo3() public pure
    {
        (bool success, ) = address(this).transfer(1 usdt);
        require(success);
    }


    function foo4() public pure
    {
        (bool success, ) = msg.sender.call(abi.encode(msg.value, address(this)));
        require(success);
    }

    function testContract() public {
        require(_caller == msg.sender);
        address c = address(new Caller);
        address a = address(new CallerThree);
        address b = address(new CallerFour);
        uint[] memory array = new uint[](4);
        array[0] = array[1];
        array[3] = array[2];
        uint[] memory callResult = c.call(abi.encodeCall(0, c,
