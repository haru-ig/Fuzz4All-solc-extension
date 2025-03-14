pragma solidity ^0.8.0;
contract Caller {
    function callme () public payable {

    }
    function payme (uint256 x) public payable {

        callme();

    }
}




pragma solidity ^0.8.0;
contract Example1 is Caller {
    bool ok;
    address public a;
    constructor (address a_in) {
        require(address(0x58e2e98e84580651b928e77f891176d5b81e6cf8)!= a_in, "001");
        a = a_in;
        ok = true;
    }
    function callme() public{
        payable c = address(this);
        msg.sender.transfer(uint256(address(c).balance));
    }
}



pragma solidity ^0.8.0;
contract Example2 is Caller {
    bool ok;
    address public a;
