pragma solidity ^0.8.0;
contract NonMutated_1_4 {
    struct Point {
        uint x, y;
        function set(uint _x, uint _y) public {
            x = _x;
            y = _y;
        }
    }
    Point p;
    function test() public view returns (uint) {
        return p.x <= 1 && p.y < 20? p.y : 1;
    }
}

pragma solidity ^0.8.0;
contract NonMutated_2_3 {
    function min(uint x, uint y) public pure returns (uint){
        x = x <= y? x : y;
        return x;
    }
    function min2(uint x, uint y) public pure returns (uint) {
        uint z = 0x1;
        while (true) {
            x = x <= 1? y : x;
            p = Point {x, y};
            if (min(x, y) == 1 || y == 20) break;
            y = z;
            z = p.x;
        }
    }
}
