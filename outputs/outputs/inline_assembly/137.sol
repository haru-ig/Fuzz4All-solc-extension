pragma solidity ^0.8.0;
contract E4G {
    uint _number;

    constructor(uint8 x, uint8 y) {
        _number = x+y;
    }
    function addOne() public pure returns (uint256) {
        address a;
        uint8 x = _number;
        a = E4G(a).add(1, E4G(a));

    }
    function subOne() public pure returns (uint256) {
        address a;
        uint8 x = _number;
        a = E4G(a).sub(1, E4G(a));

    }
}
contract E4G
{
    uint _m;

    constructor(uint m) {
        _m = m;
    }
    function add(uint8 x, uint8 y) public pure virtual returns (uint256) {

        uint8 z = x;
        E4G w;

        for(uint8 xx=x;xx<y;++xx) {
            w.add(z,_m);
            z = E4G(w).add(xx+1,E4G(w).sub(xx+1,E4G(w)));
        }

        address a;
        uint8 b =  y;
        w.add(b,_m);

        for(b=y;b>x;--b) {
            a = E4G(a).add(b,_m);
            w.subOne();
            w.addOne();
        }

        b = x;
        w.addOne();

        for(uint8 xx=y;xx>=x;--xx) {
            w.subOne();
            w.addOne();
        }

        a = E4G(a).add(x,_m);
        return a;
    }
    function sub(uint8 x, uint8 y) public pure virtual returns (uint256) {
        uint8 z = x;
        E4G w;

        for(uint8 xx=x;xx<y;++xx) {
            w.sub(z,_m);
            z = E4G(w).add(xx+1,E4G(w).sub(xx+1,E4G(w)));
        }

        uint8 b = y;
        w.sub(b,_m);

        w.addOne();

        a = E4G(a).add(b,_m);
        return a;
    }
}

contract App {
    function getAnswer() public pure returns (uint256
