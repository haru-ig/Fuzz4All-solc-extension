pragma solidity ^0.8.0;
contract third {



    function h() public constant view returns(uint) {
        return 10;
    }

    function f() public {
        uint x = h();
        uint y = x.add(8);
        uint z = y.add(-1);
        require(z == 7, "error");
        uint w = z.add(1);
        require(w == z, "error");
    }

    function g() public {
        uint x = h().sub(8);
        uint y = x.sub(-1);
        require (y == 9, "error");
        uint z = y.sub(1);
        require (z == y, "error");
    }
 }

pragma solidity ^0.8.0;
contract second {

    function call2(uint x) public {
        uint y = h();
        if(x > 5){
            y = z();
        } else {
            uint y = b();
        }
    }

    uint z() public view returns(uint) {
        return 30;
    }

    uint b() public view returns(uint) {
        return 20;
    }

    uint h() public constant view returns(uint) {
        return 10;
    }
 }

pragma solidity ^0.8.0;
contract first {

    struct PairInfo {
        uint id;
        uint price;
    }

    function exchange(PairInfo memory a) public returns(PairInfo memory b) {
        uint price = a.id + a.price;
        b.id = a.id;
        b.price = price;
    }
}
