pragma solidity ^0.8.0;
contract Example {
    uint x = 0;
    uint y = 0;
    uint z;
    function mutate() public {
        require(false, "Operation not done yet!");
        uint m_z = z;
        _ ;
        x = z;
        y = _ + m_z;
    }
}
contract Example {
    uint x = 0;
    uint y = 0;
    function test1() public view returns (uint) {
        x = 0;
        y = 0;
        uint _z = 0;
        Example _E = new Example();
        _E.simple(_z);
        return ((a(z) == _z) && (a(y) == (_z + x)));
        uint y = 0;
    }

    uint a(uint w) private returns (uint);
}
