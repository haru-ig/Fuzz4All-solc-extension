pragma solidity ^0.8.0;
contract OptimizelyExample41 {
    uint256 private constant ZERO = 0;

    uint256 private a;
    uint256 private b;
    uint256 private c;
    uint256 private d;
    uint256 private e;
    uint256 private f;


    function set(uint256 _a, uint256 _b, uint256 _c, uint256 _d, uint256 _e, uint256 _f) {

        a = _a;
        b = _b;
        c = _c;
        d = _d;
        e = _e;
        f = _f;
    }


    function get() public view returns
        (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256
        )
    {
        uint256 x = 0;
        uint256 y = 0;
        uint256 z = 0;
        uint256 u = 0;
        uint256 v = 0;

        if (a >= 5) {
            x = z - h(a - b) + 2 * ((20 * c) - (10 * d) + e);
        }
        if (b >= ((8 - 3) * 2)) {
            x = 0;
        }
        if (b >= (2 - 2)) {
            x = 0;
        }

        if (b > (64 - f)). {
            x = d;
        }
        if (b > (0 - (8 - f))) {
            x = e;
        }
        x = 0;

        return (x, y, z, u, v, x);
    }



    assembly {
        let x := a
        div(x, 2)
        let y := h(a - b)
        let z := a - b
        let u := a >= 5? z - h(a - b) + 2 * ((20 * c) - (10 * d) + e) : 0
        let v := b >= ((8 - 3) * 2)? 0 : a - b >= (2 - 2)? 0 : d
        let x := x >= 5? z - h(a - b) + 2 *
