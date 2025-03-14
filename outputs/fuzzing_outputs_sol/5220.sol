pragma solidity ^0.8.0;
contract C22
{
        function c() public onlyowner {
                c();
        }
}
contract Mutator
{
    function c() public onlyowner {
            call(); }
    function call() public returns(bool) {
            return false;
    }
}
contract Caller
{
    address deployer = msg.sender;
    function () external payable {require(msg.value == address(this).balance);}
    function () public payable {}
    function call(address self) public returns (bool) {
            call();
    }
}
contract Caller2
{
    function () public {
            C22 foo = new C22();
            Mutator bar = new Mutator();
            foo.c();
            bar.c();
            bar.call();
            foo.c();
            bar.c();
            foo.d();
            bar.c();
            address a = address(0xdead);
            call( address(a) );
    }
    address lastBad = 0x0;
    function() public payable {
        lastBad = msg.sender;
        if (msg.value == 1 ether) {
            revert();
        }
    }
    function call(address self) public {
        lastBad.transfer(1 ether);}
}
