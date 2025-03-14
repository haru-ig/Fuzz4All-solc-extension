pragma solidity ^0.8.0;
struct A {
    address payable a;
}
interface I
{
    function set(A) external;
}
contract C {
    I i;
    mapping(address => uint) balance;
    function() external payable {}
    function set(A memory a) public
    {
        i.set(a);
    }
    function transfer(uint amount) public {
        balance[msg.sender] = balance[msg.sender] - amount;
        a.transfer(amount);
    }
}
function getBalance(address payable a) public view
    returns (uint balance)
{
    return a.balance;
}
function doWork(A memory a) public view
    returns (uint aBalance) {
    aBalance = getBalance(a.a);
}


function test() {
        C c;
        A memory a;
        a.a = payable(address(0x10));
        payable(address(c)).transfer(1);
        c.set(a);
        c.transfer(1);
}
{

    C c;








    c.transfer(1);







    uint cBalance = c.balance;
    assert(cBalance == 1);
}
    uint cBalance = c.balance;
    assert(cBalance == 1);
}



{
    C c;
    A memory a;
    a.a = address(this);
    a.b = 10;
    a.c = "b";
    c.set(a);

    uint cBalance = c.balance;
    assert(
