pragma solidity ^0.8.0;
contract Test6d {
    uint256[2] _mem;
    uint256 _value = 785;
    constructor()
        public
    {
        _mem[1] = 7;
        _mem[0] = 3;
    }
}

pragma solidity ^0.8.0;
contract Test6f {
    uint256[] _mem;
    uint256 _value = 835;
    constructor()
        public
    {
        _mem.push(8);
        _mem.push(15);
        _mem.push(1);
    }
}
