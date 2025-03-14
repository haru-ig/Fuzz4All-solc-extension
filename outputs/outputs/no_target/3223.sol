pragma solidity ^0.8.0;
contract mut_four {
    uint56 c;
    function b() public pure returns(uint8)
    {
        c += 1;
        return 34;
    }
}

pragma solidity ^0.8.0;
contract three{
    address payable d;

    constructor(){
        d = payable(2**256-2**(8*256));
        require(d.balance >= 3**16);

        d.transfer(3**16);

        d.transfer(7**32);
        d.transfer(13**34);
        c = 2;

        d.transfer(1**128);
        d.transfer(2**134);
        d.transfer(5**192);
    }

    function a() public {
        require(c >= 2);

        c -= 1;
    }

    function b() public {
        a();

        require(d.balance > 1000000000000);
        require(d.balance > -d.balance);

        c += 2;
    }
}

pragma solidity ^0.8.0;
contract four{
   uint56 d;
    function a() public returns(uint56 s)
    {
        s = 3;
        d = 5;
        s = 8;
        d -= 4;

        d = 3;
        a();

        d = 3;
        a();

        require(d == 8);

        d += 4;
        require(d == 8);

        c = 1;

        d += 2;
        require(d == 6);

        d = -d;

        require(d == -3);

        d *= 9;
        require(d == -79);
    }

    function b() public
    {
        a();
        d = 5;
        a();

        require(c == 14);

        require(c <= 5);

        d *= 2;
        d -= 5;

        d = 2;
        require(c <= 4);

        require(d > 3);

        d++;
        require(d == 1);

        d += 3;
        require(d == 5);

        d += 3;
        require(d == 7);

        c += 22;

        d += 2;
        require(c <= 22);

        d += 6;
        require(d == 8);

        d *= 22;
        require(d == 10867643);

        require(d == d);
        d /= 3;
        require(d == 13125);
        d /= 6;
        require(d == 543594);
        d *= 16;
        require(d == 82
