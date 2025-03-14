pragma solidity ^0.8.0;
contract TestFallback {
    function invalid(uint[])
        public pure
        returns (uint, uint)
    {
        (, ) memory m;
        m.x = add(3, 3);
        return (add(2, 3), m);
    }
    function ok()
        public view
        returns (uint)
    {
        return add(3, 3);
    }
    function add(uint x, uint y)
        public pure
        returns (uint)
    {
        require((x + y) < 1E12, 'test');
        return (x + y);
    }
}
